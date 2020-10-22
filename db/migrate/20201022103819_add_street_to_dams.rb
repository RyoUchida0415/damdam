class AddStreetToDams < ActiveRecord::Migration[5.2]
  def change
    add_column :dams, :street, :string
  end
end
