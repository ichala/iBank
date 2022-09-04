class HomeController < ApplicationController
  def index
    @cat = Group.includes(:trans).all.where(user: current_user)
  end
end
