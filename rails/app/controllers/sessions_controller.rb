class SessionsController < ApplicationController

  def loguin
    session = Usuario.find.by(
      email: params[:email],
      password: params[:password]
    )
    if session.present?
      render json, session, status: 200
    end
  end
end
