class PublicController < ApplicationController
    before_action :set_user

    def main; end

    private

    def set_user
        @user = current_user
        unless @user
          redirect_to new_user_session_path
        end
    end
end
