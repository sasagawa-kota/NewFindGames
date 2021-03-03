class ReviewsController < ApplicationController
  
  def new
    @review = Review.new
  end
  
  def index
    @review = Review.all
  end
  
  def create
    topic = Topic.find(params[:topic_id])
    @review = topic.reviews.new(review_params)
    @review.user_id = current_user.id
    if @review.save
      redirect_to topics_path, notice: 'コメントに成功しました'
    else
      flash.now[:danger] = "コメントに失敗しました"
      render :new
    end
  end
  
  private
  def review_params
    params.require(:review).permit(:game_reviewe)
  end
end
