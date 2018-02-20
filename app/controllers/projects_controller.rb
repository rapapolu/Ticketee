class ProjectsController < ApplicationController
    def index
    end
    def new 
        @project = Project.new      
    end
    def create
        @project = Project.new(project_params)
        
        if @project.save
            flash[:notice] = "Project has been created"
            redirect_to @project
           # redirect_to @project, flash {success:"Project created successfully"}
            #redirect_to @project, alert "Project created successfully"
            #redirect_to @project, notice : "Project created successfully"
        else
            #nothing yet
        end
    end
    def show
        @project = Project.find(params[:id])
    end
    private 
    def project_params
        params.require(:project).permit(:name,:description)
    end
end
