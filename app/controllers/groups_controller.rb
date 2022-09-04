class GroupsController < ApplicationController
  def new
    @group = Group.new
  end

  def show
    @owned_trans = current_user.groups.includes(:trans).find(params['id'])
  end

  def create
    @group = current_user.groups.new(group_params)

    if @group.save
      redirect_to root_path,
                  flash: { success: "#{@group.name} has been successfully created!" }
    else
      redirect_to new_group_path, flash: { error: @group.errors.full_messages }
    end
  end

  def destroy
    @group = group.find params[:id]
    @group.destroy!
    redirect_to groups_path, flash: { success: "#{@group.name} has been deleted successfully!" }
  end

  private

  def group_params
    params.require(:group).permit(:name, :icon)
  end
end
