class GroupsController < ApplicationController
  before_action :authenticate_user!
  before_action :set_group, only: %i[show edit update destroy]

  def index
    @user = User.find(params[:user_id])
    @groups = Group.where(user_id: @user.id)
    @expenditures = Expenditure.where(group_id: @groups.ids)
  end

  def show
    # @user = current_user.id
    # @group = Group.find_by(id: params[:id])
    @expenditures = Expenditure.all.where(group_id: @group.id)
  end

  def new
    @user = User.find(params[:user_id])
    @group = Group.new
  end

  def create
    @user = User.find(params[:user_id])
    @group = Group.new(group_params)
    @group.user_id = @user.id

    respond_to do |format|
      if @group.save
        format.html { redirect_to user_groups_path(@user), notice: 'Group was successfully created.' }
        format.json { render :index, status: :created, location: @group }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @group.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /groups/1 or /groups/1.json
  def destroy
    @group.destroy

    respond_to do |format|
      format.html { redirect_to groups_url, notice: 'Group was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def set_group
    @group = Group.find(params[:id])
  end

  # Only allow a list of trusted parameters through.
  def group_params
    params.require(:group).permit!
  end
end
