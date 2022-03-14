# ECS Compatibility Support Mixin

[![Build Status](https://travis-ci.org/logstash-plugins/logstash-mixin-ecs_compatibility_support.svg?branch=master)](https://travis-ci.org/logstash-plugins/logstash-mixin-ecs_compatibility_support)

This gem provides an API-compatible implementation of ECS-compatiblity mode,
allowing plugins to be explicitly configured with `ecs_compatibility` in a way
that respects pipeline- and process-level settings where they are available.
It can be added as a dependency of any plugin that wishes to implement one or
more ECS-compatibility modes while still supporting older Logstash versions.

## Usage

1. Add version `~>1.0` of this gem as a runtime dependency of your Logstash plugin's `gemspec`:

    ~~~ ruby
    Gem::Specification.new do |s|
      # ...

      s.add_runtime_dependency 'logstash-mixin-ecs_compatibility_support', '~>1.0'
    end
    ~~~

2. In your plugin code, require this library and include it into your plugin class
   that already inherits `LogStash::Plugin`:

    ~~~ ruby
    require 'logstash/plugin_mixins/ecs_compatibility_support'

    class LogStash::Inputs::Foo < Logstash::Inputs::Base
      include LogStash::PluginMixins::ECSCompatibilitySupport

      # ...
    end
    ~~~

3. Use the `ecs_compatibility` method, which will reflect the user's desired
   ECS-Compatibility mode (either `:disabled` or a symbol holding a v-prefixed
   integer major version of ECS, e.g., `:v1`) after the plugin has been sent
   `#config_init`; your plugin does not need to know whether the user specified
   the value in their plugin config or its value was provided by Logstash.

   Care should be taken to handle _all_ possible values:
    - all ECS major versions that are supported by the plugin
    - ECS Compatibility being disabled
    - helpful failure when an unsupported version is requested

    ~~~ ruby
      def register
        case ecs_compatibility
        when :disabled
          # ...
        when :v1
          # ...
        else
          fail(NotImplementedError, "ECS #{ecs_compatibility} is not supported by this plugin.")
        end
      end
    ~~~

## Development

This gem:
 - *MUST* remain API-stable at 1.x
 - *MUST NOT* introduce additional runtime dependencies