class PagesController < ApplicationController
    def welcome
        if (@user_profile)
            @user_profile = current_user.user_profile
        end
    end
end
