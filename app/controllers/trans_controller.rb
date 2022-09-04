class TransController < ApplicationController
  def destroy
  end

  def new
    @trans = Tran.new
  end

  def create
    @groups = params[:tran][:group_id].drop(1)
     @groups.each do |grp| 
      @trans = Tran.new(name:params[:tran][:name],amount:params[:tran][:amount],group_id:grp.to_i,user:current_user)
      @trans.save
     end
     redirect_to root_path,
     flash: { success: "Transactions has been successfully Added !" }

  end


  private

  def trans_params
    params.require(:trans).permit(:group_id, :amount, :name)
  end
end
