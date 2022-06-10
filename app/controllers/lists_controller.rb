class ListsController < ApplicationController
  def new
    @list = List.new
  end
  
  def create
    @list =List.new(list_params)
    if @list.save
      flash[:notice] = "Book was successfully created"
      redirect_to list_path(@list.id)
    else
      render :new
    end
  end  

  def index
    @lists = List.all
    @list =List.new
  end

  def show
    @list = List.find(params[:id])
  end

  def edit
    @list = List.find(params[:id])
    
  end 
  
  def update
    @list = List.find(params[:id])
    if @list.update(list_params)
     
      flash[:notice] = "Book was successfully created"
      redirect_to list_path(@list.id)
    else
      render :edit
    end
  end
  
  def destroy
    list = List.find(params[:id])
    if list.destroy
     flash[:notice] = "Book was successfully destroyed."
     redirect_to '/lists'
    else
      render :show
    end  
    
  end
  
  
  private
  def list_params
    params.require(:list).permit(:title, :body)
  end  
end
