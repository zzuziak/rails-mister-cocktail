class ReviewsController < ApplicationController
  before_action :set_review, only: [:destroy, :show]


  def new
    @review = Review.new
  end

  def create
    @cocktail = Cocktail.find(params[:cocktail_id])
    @review = Review.new(review_params)
    @review.cocktail = @cocktail
    if @review.save
      redirect_to cocktail_path(@cocktail)
    else
      render :new
    end
  end

  private

  def review_params
    params.require(:review).permit(:title, :content, :rating)
  end

  def set_review
    @review = Review.find(params[:id])
  end


end
