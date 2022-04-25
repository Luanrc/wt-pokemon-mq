class CreateTransfers < ActiveRecord::Migration[5.2]
  def change
    create_table :transfers do |t|
      t.string :trainer
      t.string :pokemon

      t.timestamps
    end
  end
end
