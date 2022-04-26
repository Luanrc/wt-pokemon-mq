class PublisherService
  def initialize
    @connection = Bunny.new(hostname: 'rabbitmq')
    @channel = connection.create_channel
  end

  def send(message)
    
    exchange = @channel.fanout("world_trader_ping", durable: true)
    
    puts '--------------enviou os dados para o ping-----------------------------'
    puts "Dados enviados para o ping: #{message}"
    exchange.publish(message.to_json)

    @connection.close
  end

  private

  def connection
    @connection.start
  end
end