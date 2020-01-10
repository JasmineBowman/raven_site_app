class Api::UsersController < ApplicationController

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      phone: params[:phone],
      high_school: params[:high_school],
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end
end
