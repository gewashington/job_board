class JobsController < ApplicationController
    def index
        @jobs = Job.all
    end

    def new
        @job = Job.new 
        # Job.new is creating a new instance of Job
    end

    def create
        p "IN THE CREATE METHOD"
        job = Job.create(job_params)
        p job
        redirect_to jobs_path
    end

    def edit
        @job = Job.find(params[:id])
    end

    def update
        @job = Job.find(params[:id])
        @job.update_attributes(job_params)
        redirect_to jobs_path
    end

    def destroy
        @job = Job.find(params[:id])
        @job.destroy
        redirect_to jobs_path
    end

    private 
    # only called in job class

    def job_params
        params.require(:job).permit(:title, :description)
    end
end
