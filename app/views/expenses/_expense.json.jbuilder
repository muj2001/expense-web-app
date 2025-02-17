json.extract! expense, :id, :user_id, :amount, :transaction_type, :category_id, :description, :date, :borrowed, :created_at, :updated_at
json.url expense_url(expense, format: :json)
