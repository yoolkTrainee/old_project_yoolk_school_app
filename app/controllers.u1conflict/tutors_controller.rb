class TutorsController < ApplicationController
  def index
    @tutor = Tutor.all
  end

  def show
    @tutor = Tutor.find(params[:id])
  end

  def new
    @tutor = Tutor.new 
  end

  def create
    @tutor = Tutor.new(params[:tutor])
    if @tutor.save
      flash[:notice] = "Create The Tutor Successfully"
      redirect_to tutors_path
    else
      flash[:error] = "Create The Tutor Failed !"
      render ("new")
    end
  end

  def edit
    @tutor = Tutor.find(params[:id])    
  end

  def update
    @tutor = Tutor.find(params[:id])
    if @tutor.update_attributes(params[:tutor])
      flash[:notice] = "Tutor Updated Successfully"
      redirect_to tutors_path
    else
      flash[:error] = "Tutor Update Failed, Please verify again!"
      render ("edit")
    end
  end


  def destroy
    @tutor = Tutor.find(params[:id])
    @tutor.destroy
    flash[:error] = "Tutor has been deleted !"
    redirect_to tutors_path
  end
end
