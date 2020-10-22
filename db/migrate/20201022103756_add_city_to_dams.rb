class AddCityToDams < ActiveRecord::Migration[5.2]
  def change
    add_column :dams, :city, :string
  end
end
