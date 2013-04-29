class TextbooksController < ApplicationController
   def index
    @textbook = Textbook.all
  end

  def show 
    @textbook = Textbook.find(params[:id])
  end

  def new
    @textbook = Textbook.new
  end

  def create
    @textbook = Textbook.new(params[:textbook])
    if @textbook.save
      flash[:notice] = "Create The TextBook Successfully"
      redirect_to textbooks_path
    else
      flash[:error] = "Create The TextBook Failed !"
      render ("new")
    end
  end

  def edit
    @textbook = Textbook.find(params[:id])
  end

  def update
    @textbook = Textbook.find(params[:id])
    if @textbook.update_attributes(params[:textbook])
      flash[:notice] = "Textbook Updated Successfully"
      redirect_to textbooks_path
    else
      flash[:error] = "Textbook Update Failed, Please verify again!"
      render ("edit")
    end
  end 

  def destroy
    @textbook = Textbook.find(params[:id])
    @textbook.destroy
    flash[:error] = "TextBook has been deleted !"
    redirect_to textbooks_path
  end
end
