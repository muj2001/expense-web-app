class CreateCategoryTable < ActiveRecord::Migration[8.0]
  def change
    create_table :categories do |t|
      t.string :category_name
      t.references :user
      t.timestamps
    end
  end
end
