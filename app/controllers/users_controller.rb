class UsersController < ApplicationController
    def index
      @UserDetails = UserDetail.all
    end
  
    def show
      @UserDetails = UserDetail.find(params[:id])
    end
  end
  