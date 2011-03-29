class ProjectsController < ApplicationController

  before_filter :authenticate_person!
  def index
    @projects = Project.all
  end

  def new
    @project = Project.new
    @message = "New Project"
  end

  def create
    @project = Project.new(params[:project])
    if @project.save
      redirect_to projects_path
    else
      @message = "New Project"
      render 'new'
    end
  end

  def update
    @project = Project.find(params[:id])
    if @project.update_attributes(params[:project])
      redirect_to project_path(@project)
    else
      @message = "#{@project.title}"
      render 'new'
    end
  end

  def edit
    @project = Project.find(params[:id])
    @message = "#{@project.title}"
    render 'new'
  end

  def destroy
    project = Project.find(params[:id])
    project.destroy
    flash[:notice] = "Project Scrapped"
    redirect_to projects_path
  end

  def show
    @project = Project.find(params[:id])
  end

end
