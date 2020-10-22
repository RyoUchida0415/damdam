class RemovePrefectureCodeFromDams < ActiveRecord::Migration[5.2]
  def change
    remove_column :dams, :prefecture_code, :string
  end
end
