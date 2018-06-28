class SponsoredPostsController < ApplicationController
  def show
    @sponsored = Sponsored.find(params[:id])
  end

  def new
    @sponsored = Sponsored.number_field(object_name, method, options = {})
  end

  def edit
    @sponsored = Sponsored.find(params[:id])
end
def create
  @sponsored = Sponsored.new
  @sponsored.title = params[:sponsored][:title]
  @sponsored.body = params[:sponsored][:body]
  @sponsored.price = params[:sponsored][:price]

  if @sponsored.save
    redirect_to @sponsored, notice: "Sponsored was saved successfully."
  else
    flash.now[:alert] = "Error creating sponsored. Please try again."
    render :new
  end
end
def update
  @sponsored = Sponsored.find(params[:id])

  @sponsored.title = params[:sponsored][:title]
  @sponsored.body = params[:sponsored][:body]
  @sponsored.price = params[:sponsored][:price]

  if @sponsored.save
    flash[:notice] = "Sponsored was updated."
    redirect_to @sponsored
  else
    flash.now[:alert] = "Error saving sponsored. Please try again."
    render :edit
  end
end
def destroy
   @sponsored= Sponsored.find(params[:id])

   if @sponsored.destroy
     flash[:notice] = "\"#{@sponsored.name}\" was deleted successfully."
     redirect_to action: :index-
   else
     flash.now[:alert] = "There was an error deleting the sponsored."
     render :show
   end
 end

end
