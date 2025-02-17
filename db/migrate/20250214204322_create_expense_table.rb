class CreateExpenseTable < ActiveRecord::Migration[8.0]
  def change
    create_table :expenses do |t|
      t.references :user, null: false, foreign_key: true
      t.decimal :amount, precision: 15, scale: 2, null: false
      t.integer :transaction_type, null: false
      t.references :category, foreign_key: true
      t.text :description
      t.date :date, null: false
      t.boolean :borrowed, default: false, null: false
      t.boolean :salary, default: false, null: false
      t.timestamps
    end
  end
end
