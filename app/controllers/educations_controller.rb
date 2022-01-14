class EducationsController < ApplicationController
    before_action :logged_in_user, only: [:new]
    before_action do
        ActiveStorage::Current.host = request.base_url
    end
    def new
        current_user.profile.educations.create
        flash[:success] = "Education added."
        redirect_to edit_url
    end

end
