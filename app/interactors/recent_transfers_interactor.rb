class RecentTransfersInteractor
  def initialize

  end

  def update_pokemon(returned_transfer)
    transfer = Transfer.find(returned_transfer[:trainer_id])

    transfer.update(pokemon: returned_transfer[:pokemon])

    puts '-------------- atualizando com os dados do pong -----------------------------'
    puts "#Transfer atualizado: #{transfer}"
  end
end