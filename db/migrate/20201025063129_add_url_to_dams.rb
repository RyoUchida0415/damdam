class AddUrlToDams < ActiveRecord::Migration[5.2]
  def change
    add_column :dams, :url, :string
  end
end
