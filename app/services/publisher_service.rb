class PublisherService
  def initialize
    @connection = Bunny.new(hostname: 'rabbitmq')
  end
  def send(exchange, message = {})
    event = channel.fanout("world_trader.#{exchange}")

    event.publish(message.to_json)
    @connection.close
  end

  def channel
    connection.create_channel
  end

  def connection
    @connection.start
  end
end