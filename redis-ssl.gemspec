Gem::Specification.new do |s|
  s.name        = 'redis-ssl'
  s.version     = '0.1.0'
  s.homepage    = "https://github.com/MisinformedDNA/redis-rb-ssl"
  s.summary     = "A plugin for the Redis gem to support SSL"
  s.description = "Adds SSL capabilities on top of redis-rb. Based off of work by RedisLabs."
  s.license     = 'MIT'
  s.authors     = [
    "Dan Friedman"
  ]
  s.email       = ["redis-db@googlegroups.com"]
  s.files       = Dir["lib/**/*.rb"]
  s.add_runtime_dependency 'redis', '~> 3.2', '>= 3.2.1'
end
