# encoding: utf-8

require 'logstash/namespace'
require 'logstash/plugin'

module LogStash
  module PluginMixins
    ##
    # This `ECSCompatibilitySupport` can be included in any `LogStash::Plugin`,
    # and will ensure that the plugin provides an `ecs_compatibility` option that
    # accepts the literal `disabled` or a v-prefixed integer representing a major
    # version of ECS (e.g., `v1`).
    #
    # When included into a Logstash plugin that already has the option (e.g.,
    # when run on a Logstash release that includes this option on all plugins),
    # this adapter will _NOT_ override the existing implementation.
    module ECSCompatibilitySupport
      ##
      # @api internal (use: `LogStash::Plugin::include`)
      # @param: a class that inherits `LogStash::Plugin`, typically one
      #         descending from one of the four plugin base classes (e.g.,
      #         `LogStash::Inputs::Base`)
      # @return [void]
      def self.included(base)
        fail(ArgumentError, "`#{base}` must inherit LogStash::Plugin") unless base < LogStash::Plugin

        # If our base does not include an `ecs_compatibility` config option,
        # include the legacy adapter to ensure it gets defined.      
        base.send(:include, LegacyAdapter) unless base.method_defined?(:ecs_compatibility)
      end

      ##
      # This `ECSCompatibilitySupport` cannot be extended into an existing object.
      # @api private
      #
      # @param base [Object]
      # @raise [ArgumentError]
      def self.extended(base)
        fail(ArgumentError, "`#{self}` cannot be extended into an existing object.")
      end

      ##
      # Implements `ecs_compatibility` method backed by an `ecs_compatibility`
      # config option accepting the literal `disabled` or a v-prefixed integer
      # representing a major version of ECS (e.g., `v1`).
      #
      # @api internal
      module LegacyAdapter
        def self.included(base)
          base.extend(ArgumentValidator)
          base.config(:ecs_compatibility, :validate => :ecs_compatibility_argument, :default => 'disabled')
        end

        ##
        # Designed for use by plugins in a `case` statement, this method returns a `Symbol`
        # representing the current ECS compatibility mode as configured at plugin
        # initialization, or raises an exception if the mode has not yet been initialized.
        #
        # Plugin implementations using this method MUST provide code-paths for:
        #  - the major version(s) they explicitly support,
        #  - ECS Compatibility being disabled, AND
        #  - unknown versions (e.g., an else clause that raises an exception)
        #
        # @api public
        # @return [:disabled, :v1, Symbol]
        def ecs_compatibility
          fail('uninitialized') if @ecs_compatibility.nil?

          # NOTE: The @ecs_compatibility instance variable is an implementation detail of
          #       this `LegacyAdapter` and plugins MUST NOT rely in its presence or value.
          @ecs_compatibility
        end

        ##
        # Intercepts calls to `validate_value(value, validator)` whose `validator` is
        # the symbol :ecs_compatibility_argument.
        #
        # Ensures that the provided value is either:
        # - the literal `disabled`; OR
        # - a v-prefixed integer (e.g., `v1` )
        #
        # @api internal
        module ArgumentValidator
          V_PREFIXED_INTEGER_PATTERN = %r(\Av[1-9][0-9]?\Z).freeze
          private_constant :V_PREFIXED_INTEGER_PATTERN

          def validate_value(value, validator)
            return super unless validator == :ecs_compatibility_argument

            value = deep_replace(value)
            value = hash_or_array(value)

            if value.size == 1
              return true, :disabled if value.first.to_s == 'disabled'
              return true, value.first.to_sym if value.first.to_s =~ V_PREFIXED_INTEGER_PATTERN
            end

            return false, "Expected a v-prefixed integer major-version number (e.g., `v1`) or the literal `disabled`, got #{value.inspect}"
          end
        end
      end
    end
  end
end
