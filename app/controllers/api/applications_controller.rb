class Api::ApplicationsController < ApplicationController

  def create
    application = Application.new(
      user_id: current_user.id,
      organization_id: params[:organization_id],
    )

    if application.save
      render json: { message: "Application Submitted!" }, status: :created
    else
      render json: { message: "Null" }
    end
  end
end
