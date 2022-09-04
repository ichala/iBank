class HomeController < ApplicationController
  def index
    @cat = Group.all.where(user: current_user)
  end
end
