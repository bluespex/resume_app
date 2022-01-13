class ProjectsController < ApplicationController
    before_action :logged_in_user, only: [:new]

    def new
        proj = Experience.find(params[:exp])
        proj.projects.create
        flash[:success] = "Project added."
        redirect_to edit_url
    end

end
