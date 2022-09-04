class TransController < ApplicationController
  def destroy
  end

  def new
    @trans = Tran.new
  end

  def create
    puts(params)
  end
end
