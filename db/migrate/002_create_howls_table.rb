class CreateHowlsTable < ActiveRecord::Migrate
  def change
    create_table :howls do |t|
      t.string :howl_text
      t.string :howl_image
      t.integer :wolf_id
      t.timestamps
    end
  end
end
