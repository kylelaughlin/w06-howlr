class AddOriginalHowlIdToHowlsTable < ActiveRecord::Migration
  def change
    add_column :howls, :original_howl_id, :integer
  end
end
