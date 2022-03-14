# 1.0.0

 - Support Mixin for ensuring a plugin has an `ecs_compatibility` method that is configurable from an `ecs_compatibility` option that accepts the literal `disabled` or a v-prefixed integer representing a major ECS version (e.g., `v1`), using the implementation from Logstash core if available.
