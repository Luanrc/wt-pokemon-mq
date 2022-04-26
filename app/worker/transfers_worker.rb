class TransfersWorker
  include Sneakers::Worker
  from_queue "world_trader_queue_pong", env: nil

  def work(raw_transfer)
    puts '--------------entrou no worker de publisher-----------------------------'
    puts "Dados vindos do pong: #{raw_transfer}"

    data = ActiveSupport::JSON.decode(raw_transfer).with_indifferent_access
    
    interactor = RecentTransfersInteractor.new()
    interactor.update_pokemon(data)
    ack!
  end

end