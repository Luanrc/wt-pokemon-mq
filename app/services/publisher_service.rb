class PublisherService
  def initialize
    @connection = Bunny.new(hostname: 'rabbitmq')
  end
  def send(message = {})
    exchange = channel.fanout("world_trader", durable: true)

    exchange.publish(message.to_json)

    @connection.close
  end

  def channel
    connection.create_channel
  end

  def connection
    @connection.start
  end
end