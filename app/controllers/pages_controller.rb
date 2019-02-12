class PagesController < ApplicationController
    def welcome
        @user_profile = current_user.user_profile
    end
end
