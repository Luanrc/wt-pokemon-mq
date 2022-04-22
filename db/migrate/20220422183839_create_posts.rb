class CreatePosts < ActiveRecord::Migration[5.2]
  def change
    create_table :posts do |t|
      t.string :trainer
      t.string :pokemon

      t.timestamps
    end
  end
end
