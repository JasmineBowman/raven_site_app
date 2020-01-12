class Api::OrganizationsController < ApplicationController

  def index
    @organizations = Organization.all
    render 'index.json.jb'
  end

  def show
    @organization = Organization.find_by(id: params[:id])
    render 'show.json.jb'
  end

  def create
    organization = Organization.new(
      name: params[:name],
      industry: params[:industry],
      description: params[:description],
      email: params[:email],
      phone: params[:phone],
      zip: params[:zip]
    )
    organization.save
  end
end
