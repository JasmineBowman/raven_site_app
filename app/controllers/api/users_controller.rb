class Api::UsersController < ApplicationController

  def index
    @users = User.all
    render 'index.json.jb'
  end

  def show
    @user = User.find_by(id: params[:id])
    render 'show.json.jb'
  end

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

  def update
    @user = User.find_by(id: params[:id])
    @user.update(
    name: params[:name], 
    email: params[:email],
    phone: params[:phone],
    high_school: params[:high_school]
    )
    if @user.save
      render 'show.json.jb'
    else
      render json: {errors: @user.errors.full_message}, status: unprocessable_entity
    end
  end






end
