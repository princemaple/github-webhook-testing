class UsersController < ApplicationController
  ## ### Getting a User
  ## `GET /users/{id}.json`
  ##
  ## #### Format
  ## @import app/models/user.rb
  def show
    render :json => User.find(params[:id])
  end
end
