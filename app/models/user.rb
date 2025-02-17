class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :expenses

  def received_transactions
    expenses.received.any? ? expenses.received : nil
  end

  def sent_transactions
    expenses.sent.any? ? expenses.sent : nil
  end
end
