class AddDefaultValueToLikesColumn < ActiveRecord::Migration
  def change
    change_column_default :howls, :likes, 0
  end
end
