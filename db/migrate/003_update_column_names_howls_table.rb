class UpdateColumnNamesHowlsTable < ActiveRecord::Migration
  def change
    rename_column :howls, :howl_text, :content
    rename_column :howls, :howl_image, :image
  end
end
