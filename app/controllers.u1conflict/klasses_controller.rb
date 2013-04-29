class KlassesController < ApplicationController
  def index
    @klasses = Klass.all
  end

  def new
    @klass = Klass.new
  end

  def create
    @klass = Klass.new(params[:klass])
    if @klass.save
      flash[:notice] = "Create Successfully."
      redirect_to klasses_path
    else
      flash[:error] = "Create unsuccessfully."
      render('new')
    end
  end

  def edit
    @klass = Klass.find(params[:id])
  end

  def update
    @klass = Klass.find(params[:id])
    if @klass.update_attributes(params[:klass])
      flash[:notice] = "Update successfully."
      redirect_to klasses_path
    else
      flash[:error] = "Update unsuccessfully."
      render('edit')
    end
  end

  def destroy
    @klass = Klass.find(params[:id])
    @klass.destroy
    redirect_to klasses_path
  end

end
