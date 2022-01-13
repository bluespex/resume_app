class UsersController < ApplicationController
    def new
        @user  = User.new
    end

    def create
        puts user_params.inspect
        @user = User.new(user_params)
        
        puts @user.inspect
        puts @user.save.inspect
        if @user.save
            log_in(@user)
            flash[:success] = "Welcome to the Sample App!"
            redirect_to (root_path)
        else
            render :new
        end
    end

    def show
        @user = User.find(params[:id])
    end

    private

    def user_params
        params.require(:user).permit(:email, :password, :name)
    end
end
