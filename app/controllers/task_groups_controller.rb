class TaskGroupsController < ApplicationController

  def new
    @project = Project.find_by_id(params[:project_id])
    @task_group = @project.task_groups.new
  end

  def create
    @project = Project.find_by_id(params[:project_id])
    @task_group =  @project.task_groups.new(params[:task_group])
    if @task_group.save
      redirect_to project_path(@project)
    else
      render 'new'
    end
  end

  def update
    @project = Project.find_by_id(params[:project_id])
    @task_group = TaskGroup.find(params[:id])
    if @task_group.update_attributes(params[:task_group])
      redirect_to(project_path(@project))
    else
      render 'new'
    end
  end

  def edit
    @project = Project.find_by_id(params[:project_id])
    @task_group = @project.task_groups.find(params[:id])
    render 'new'
  end

  def destroy
    task_group = TaskGroup.find(params[:id])
    task_group.destroy
    redirect_to(project_path(task_group.project))
  end

  def show
    @project = Project.find_by_id(params[:project_id])
    @task_group = @project.task_groups
  end

end
