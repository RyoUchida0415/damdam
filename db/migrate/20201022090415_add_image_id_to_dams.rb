class AddImageIdToDams < ActiveRecord::Migration[5.2]
  def change
    add_column :dams, :image_id, :string
  end
end
