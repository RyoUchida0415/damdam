class CreateDams < ActiveRecord::Migration[5.2]
  def change
    create_table :dams do |t|
      t.string :title
      t.string :category
      t.text :body
      t.string :admin_id

      t.timestamps
    end
  end
end
