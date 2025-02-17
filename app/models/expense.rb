class Expense < ApplicationRecord
  belongs_to :user
  belongs_to :category, optional: true

  enum :transaction_type, { received: 0, sent: 1 }

  validates :transaction_type, inclusion: { in: transaction_types.keys }
  validates :amount, numericality: true, format: { with: /\A\d+(\.\d{1,2})?\z/, message: "should be a number with at most 2 decimal places" }
end
