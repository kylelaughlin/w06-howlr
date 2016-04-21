class CreateWolvesTable < ActiveRecord::Migration
  def change
    create_table :wolves do |t|
      t.string :name
      t.string :image
      t.string :description
    end
  end
end
