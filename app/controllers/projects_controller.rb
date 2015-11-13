class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end

  def create
    @project = Project.new(project_params)

      if @project.save
        flash[:notice] = "Project has been created."
        redirect_to @project
      else
        flash.now[:notice]= "Project has not been created."
        render "new"
      end
  end

  def show
    @project = Project.find(params[:id])
  end

  def index

  end

  def edit

  end

  def update

  end

private

  def project_params
    params.require(:project).permit(:name, :description)
  end
  def delete

  end

end
