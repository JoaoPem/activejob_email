if Rails.env.production?
  $redis = Redis.new(url: ENV["REDIS_URL"])
else
  redis_config = YAML.safe_load(File.read(Rails.root.join("config/redis.yml")), aliases: true).deep_symbolize_keys[Rails.env.to_sym]
  $redis = Redis.new(redis_config)
end
