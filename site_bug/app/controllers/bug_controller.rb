class BugController < ApplicationController
  def index
    @bugs = Bug.all
  end
  def new
    Bug.create title: params[:title],
      description:params[:description],
      owner_id: "tbc",
      state:0
    redirect_to '/bugs'
  end
  def create
  end
  def show
    @bug = Bug.find(params[:id])
  end
end
