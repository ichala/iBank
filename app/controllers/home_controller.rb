class HomeController < ApplicationController
  before_action :authenticate_user!, except: [:index]
  def index
    @cat = Group.includes(:trans).all.where(user: current_user)
  end
end
