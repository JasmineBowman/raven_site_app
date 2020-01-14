class Api::OrganizationsController < ApplicationController
  # before_action :authenticate_user

  def index
    @organizations = Organization.all
    render 'index.json.jb'
  end

  def show
    @organization = Organization.find_by(id: params[:id])
    render 'show.json.jb'
  end
end
