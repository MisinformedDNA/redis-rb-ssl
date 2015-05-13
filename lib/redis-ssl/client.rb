class Redis
  Client.class_eval do
    DEFAULTS = {
      :url => lambda { ENV["REDIS_URL"] },
      :scheme => "redis",
      :host => "127.0.0.1",
      :port => 6379,
      :path => nil,
      :timeout => 5.0,
      :connect_timeout => 5.0,
      :password => nil,
      :db => 0,
      :driver => nil,
      :id => nil,
      :tcp_keepalive => 0,
      :reconnect_attempts => 1,
      :inherit_socket => false,
      :use_ssl => false,
      :ssl_ca_file => nil,
      :ssl_key => nil,
      :ssl_cert => nil,
      :ssl_verify_mode => 0
    }

    def use_ssl
      @options[:use_ssl]
    end

    def ssl_ca_file
      @options[:ssl_ca_file]
    end

    def ssl_key
      @options[:ssl_key]
    end

    def ssl_cert
      @options[:ssl_cert]
    end

    def ssl_verify_mode
      @options[:ssl_verify_mode]
    end
  end
end