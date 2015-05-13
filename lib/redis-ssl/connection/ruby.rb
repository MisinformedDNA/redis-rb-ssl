class Redis
  module Connection
    class Ruby
      def self.connect(config)
        if config[:scheme] == "unix"
          sock = UNIXSocket.connect(config[:path], config[:timeout])
        else
          sock = TCPSocket.connect(config[:host], config[:port], config[:timeout])
          if config[:scheme] == "rediss" or config[:use_ssl]
            ssl_context = OpenSSL::SSL::SSLContext.new
            ssl_context.ca_file = config[:ssl_ca_file]
            ssl_context.key = config[:ssl_key]
            ssl_context.cert = config[:ssl_cert]
            ssl_context.verify_mode = config[:ssl_verify_mode]
            ssl_client = OpenSSL::SSL::SSLSocket.new sock, ssl_context
            ssl_client.connect
            sock = ssl_client
          end
        end

        instance = new(sock)
        instance.timeout = config[:timeout]
        instance.set_tcp_keepalive config[:tcp_keepalive]
        instance
      end
    end
  end
end
