class UsersController < ApplicationController
  def index
    @users = User.all.order(:label)

    render json: @users
  end
end
