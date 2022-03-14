# encoding: utf-8
require "logstash/util/loggable"

module LogStash
  module Inputs
    module Azure
      class LookBackPositionProvider

        java_import com.microsoft.azure.eventhubs.EventPosition
        java_import java.time.Instant

        include java.util.function.Function
        include LogStash::Util::Loggable

        def initialize(look_back_seconds)
          @logger = self.logger
          @look_back = Instant.ofEpochSecond(Instant.now.getEpochSecond - look_back_seconds.to_i)
          @logger.debug("Look back date/time: #{@look_back}")
        end

        def apply(t)
          EventPosition.fromEnqueuedTime(@look_back);
        end
      end
    end
  end
end
