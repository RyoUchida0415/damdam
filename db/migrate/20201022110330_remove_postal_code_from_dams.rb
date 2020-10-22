class RemovePostalCodeFromDams < ActiveRecord::Migration[5.2]
  def change
    remove_column :dams, :postal_code, :integer
  end
end
