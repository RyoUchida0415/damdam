class RemoveCategoryFromDams < ActiveRecord::Migration[5.2]
  def change
    remove_column :dams, :dam, :integer
  end
end
