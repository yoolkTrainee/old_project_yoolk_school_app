class CoursesController < ApplicationController

	def index
		@category = Category.all
	end

	#read more
	def show
		@course = Course.find(params[:id])
		session[:course_name] = @course.title
		session[:course_id] = params[:id]
		session[:category_id] = @course.category_id
	end

	# def showObjective
	# 	session[:course_id] = params[:id]
	# 	@course = Course.find(params[:id])
	# end

	def new
		@course = Course.new
		# @klass = Klass.where('course_id Is NULL').order('name')
	end

	def create
		session[:course_create] = params[:id]
		@course = Course.new(params[:course])
		if @course.save
			flash[:notice] = "Create Successfully."
			redirect_to category_path(session[:category_id])
		else
			flash[:error] = "Create Faild, Please Check Again!"
			# redirect_to(:action => 'new')
			render('new')
		end

	end

	def edit
		@course = Course.find(params[:id])
		# @klass = Klass.where('course_id Is NULL Or course_id = ' + params[:id]).order('name')
	end

	def update

		@course = Course.find(params[:id])
		if @course.update_attributes(params[:course])
			flash[:notice] = "Update Successfully."
			redirect_to category_path(session[:category_id])
		else
			flash[:error] = "Update Failed, Please Check Again!"
			render('edit')
		end

	end

	def destroy
		@course = Course.find(params[:id])
		
		@course.destroy

		flash[:error] = "Course has been deleted !"
		redirect_to category_path(session[:category_id])
	end

end
