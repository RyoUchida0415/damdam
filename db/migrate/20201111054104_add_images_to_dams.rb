class AddImagesToDams < ActiveRecord::Migration[5.2]
  def change
    add_column :dams, :images, :json
  end
end
