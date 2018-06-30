class SponsoredPostsController < ApplicationController
  def show
    @sponsoredpost = SponsoredPost.find(params[:id])
  end

  def new
    @sponsoredpost = SponsoredPost.new
  end

  def edit
    @sponsoredpost = SponsoredPost.find(params[:id])
end
def create
  @sponsoredpost = SponsoredPost.new
  @sponsoredpost.title = params[:sponsored][:title]
  @sponsoredpost.body = params[:sponsored][:body]
  @sponsoredpost.price = params[:sponsored][:price]

  if @sponsoredpost.save
    redirect_to @sponsoredpost, notice: "Sponsored was saved successfully."
  else
    flash.now[:alert] = "Error creating sponsoredpost. Please try again."
    render :new
  end
end
def update
  @sponsoredpost = SponsoredPost.find(params[:id])

  @sponsoredpost.title = params[:sponsored][:title]
  @sponsoredpost.body = params[:sponsored][:body]
  @sponsoredpost.price = params[:sponsored][:price]

  if @sponsoredpost.save
    flash[:notice] = "Sponsored was updated."
    redirect_to @sponsoredpost
  else
    flash.now[:alert] = "Error saving sponsoredpost. Please try again."
    render :edit
  end
end
def destroy
   @sponsoredpost= SponsoredPost.find(params[:id])

   if @sponsoredPost.destroy
     flash[:notice] = "\"#{@sponsoredpost.name}\" was deleted successfully."
     redirect_to action: :index
   else
     flash.now[:alert] = "There was an error deleting the sponsoredpost."
     render :show
   end
 end

end
