class ProjectsController < ApplicationController

    def index
        @projects = Project.all
        render :index
        # get "/projects"
    end

    def new
        @project = Project.new
        render :new
        # get "/projects/new"
    end

    def create
        project_params = params.require(:project).permit(:title, :description)
        @project = Project.create(project_params)
        redirect_to project_path(@project)
        # post "/projects"
        #redirecting to the index (render show) page
    end

    def show
        @project = Project.find(params[:id])
        render :show
        # get "/projects/:id"
    end


    def edit
        @project = Project.find(params[:id])
        render :edit
    # get "/projects/:id/edit"
    end


    def update
        @project = Project.find(params[:id])
        project_params = params.require(:project).permit(:title, :description)
        @project.update(project_params)
        redirect_to project_path(@project)
    # patch "/projects/:id"
    # redirect to the project/:id (render show) to show the updated data
    end

    def destroy
        @project = Project.find(params[:id])
        Project.destroy(params[:id])
        redirect_to projects_path
    # delete "/projects/:id"
    #redirect to the all (index) page
    end


end
