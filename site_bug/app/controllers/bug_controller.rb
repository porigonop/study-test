class BugController < ApplicationController
  before_filter :confirm_logged_in
  def index
    @bugs = Bug.all
  end
  def new
      bug = Bug.create title: params[:bug][:title],
        description: params[:bug][:description],
        owner_id: current_user.id,
        state: 0
      bug.user << User.find_by(username:params[:bug][:assigned_to])
      redirect_to bugs_path
  end
  def create
    @users = User.all
  end
  def show
    @bug = Bug.find(params[:id])
    @owner = User.find(@bug.owner_id)
  end
end
