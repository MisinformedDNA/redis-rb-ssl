#redis-ssl

A plugin for the [Redis gem](https://github.com/redis/redis-rb) to support SSL. Based off of [work by RedisLabs](https://github.com/RedisLabs/redis-rb/commit/a95affbca2bed4d0b7e6c7a3add135de07c8f720).

##Example
```ruby
$redis = Redis.new(
  :host => '[ApplicationName].redis.cache.windows.net', 
  :port => 6380, 
  :password => '[Password]', 
  :use_ssl => true)
```
