class ExperiencesController < ApplicationController
    before_action :logged_in_user, only: [:new]

    def new
        exp = current_user.profile.experiences.create
        exp.projects.create
        flash[:success] = "Experience added."
        redirect_to edit_url
    end

end
