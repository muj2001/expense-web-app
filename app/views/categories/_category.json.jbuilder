json.extract! category, :id, :category_name, :user_id, :description, :created_at, :updated_at
json.url category_url(category, format: :json)
