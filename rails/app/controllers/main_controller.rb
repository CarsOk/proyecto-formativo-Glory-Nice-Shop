class MainController < ApplicationController
  before_action :authenticate_usuario!
end
