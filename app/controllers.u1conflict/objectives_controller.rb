class ObjectivesController < ApplicationController

	def index
		@objective = Objective.all
	end
	def new
		@objective = Objective.new
	end

	def create
		@objective = Objective.new(params[:objective])
		if @objective.save
			flash[:notice] = "Create an Objective Successfully."
			redirect_to course_path(session[:course_id])
		else
			flash[:error] = "Create an Objective unsuccessfully."
			# redirect_to(:action => 'new')
			render('new')
		end
	end

	def edit
		@objective = Objective.find(params[:id])
	end

	def update
		@objective = Objective.find(params[:id])
		if @objective.update_attributes(params[:objective])
			flash[:notice] = "Update Objective Successfully."
			redirect_to course_path(session[:course_id])
		else
			flash[:error] = "Update Objective unsuccessfully."
			render('edit')
			# redirect_to(:action => 'edit')
		end
	end

	def destroy
		flash[:error] = "Delete Successfully."
		
		@objective = Objective.find(params[:id])
		@objective.destroy

		redirect_to course_path(session[:course_id])
	end

	#readd more 
	def show
		# session[:course_id] = params[:id]
		@course = Course.find(params[:id])
	end


end
