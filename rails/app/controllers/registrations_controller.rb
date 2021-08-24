class RegistrationsController < ApplicationController
 
  def index
    @registrations = Usuario.all
    render json: @registrations, status: 200
  end

  def show
    @registrations = Usuario.find(params[:id])
    render json: @registrations, status: 200
    puts "solicitud exitosa"
  end

  def create
    @registrations = Usuario.create!( 
      nombres: params[:nombres],
      apellidos: params[:apellidos],
      celular: params[:celular],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation]   
    )
    render json: @registrations, status: 200
    puts "registro exitoso"
  end

  def update
    @registrations = Usuario.find(params[:id])
    @registrations.update(
      nombres: params[:nombres],
      apellidos: params[:apellidos],
      celular: params[:celular],
    )
   render json: @registrations, status: 200
   puts "actualizado con exito"
  end

end
