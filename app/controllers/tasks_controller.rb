class TasksController < ApplicationController

	def index
		@tasks = Task.all
	end

	def show
		@task = Task.find(params[:id])
	end

	def new
		@task = Task.new

	end

	def edit
		@task = Task.find(params[:id])
	end

	def create
		@task = Task.new(params[:task])

		respond_to do |format|
			if @task.save	
				format.html { redirect_to @task }
			else
				format.html { render :action => "new" }
			end	
		end
	end

	def update
		@task = Task.find(params[:id])

		respond_to do |format|
			if @task.update_attributes(params[:task])
				format.html { redirect_to @task }
			else
				format.html { redirect_to tasks_path }
			end
		end
	end

	def destroy
		@task = Task.find(params[:id])

		respond_to do |format|
			if @task.destroy
				format.html { redirect_to tasks_url }
			else
				format.html { redirect_to tasks_url }
			end
		end
	end

end
