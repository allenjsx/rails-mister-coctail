class DosesController < ApplicationController
  def new
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = Dose.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @dose = @cocktail.doses.new(doses_params)
    if @dose.save
      redirect_to cocktail_path(@cocktail.id)
    else
      render :new
    end
  end

  def destroy
    @dose = Dose.find(params[:id])
    @dose.destroy
    redirect_to cocktail_path(@dose.cocktail)
  end

  private

  def doses_params
    doses_params = params.require(:dose).permit(:description, :ingredient_id)
  end

end



  # def new
  #   @restaurant = Restaurant.find(params[:restaurant_id])
  #   @review = Review.new
  # end

  # def create
  #   @restaurant = Restaurant.find(params[:restaurant_id])
  #   @review = @restaurant.reviews.new(review_params)
  #   if @review.save
  #     redirect_to restaurant_path(@restaurant)
  #   else
  #     render :new
  #   end

      # def restaurant_find
     # @restaurant = Restaurant.find(params[:restaurant_id])
  # end
