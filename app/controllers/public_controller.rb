class PublicController < ApplicationController
    before_action :set_user

    def main
      if @user.expenses.any?
        received_money = @user.expenses.received.sum(:amount)
        sent_money = @user.expenses.sent.sum(:amount)
        @sum = received_money - sent_money
      else
        @sum = 0
      end
    end

    private

    def set_user
        @user = current_user
        unless @user
          redirect_to new_user_session_path
        end
    end
end
