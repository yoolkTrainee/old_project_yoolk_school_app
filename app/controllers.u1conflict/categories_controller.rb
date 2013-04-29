class CategoriesController < ApplicationController
  def index
  	@categories = Category.all
  end

  def show    
  	@category = Category.find(params[:id])
    session[:category_name] = @category.title
    session[:category_id] = params[:id]
  end

  def new
    @category = Category.new
  end

  def create
    @category = Category.new(params[:category])
    if @category.save
      flash[:notice] = "Create Successfully."
      redirect_to root_path
    else
      # redirect_to(:action => 'new')
      flash[:error] = "Create Unsuccessfully, Please check the fill correctly"
      render "new"
    end
  end

  def edit
    @category = Category.find(params[:id])
  end

  def update

    @category = Category.find(params[:id])

    if @category.update_attributes(params[:category])
      flash[:notice] = "Update Successfully."
      redirect_to category_path(session[:category_id])
    else
      flash[:error]
        render('edit')
    end

  end

  def destroy
    @category = Category.find(params[:id])
    @category.destroy
    flash[:error] = "Category has been deleted !"
    redirect_to root_path
  end

end
