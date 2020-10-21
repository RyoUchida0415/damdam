class AddCategoryToDams < ActiveRecord::Migration[5.2]
  def change
    add_column :dams, :category, :integer
  end
end
