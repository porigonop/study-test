class BugController < ApplicationController
  before_filter :confirm_logged_in
  def index
    @bugs = Bug.all
  end
  def new
      Bug.create title: params[:bug][:title],
        description: params[:bug][:description],
        owner_id: current_user.id,
        state: 0
      redirect_to bugs_path
  end
  def create
  end
  def show
    @bug = Bug.find(params[:id])
  end
end
