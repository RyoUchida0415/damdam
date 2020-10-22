class AddPrefectureCodeToDams < ActiveRecord::Migration[5.2]
  def change
    add_column :dams, :prefecture_code, :integer
  end
end
