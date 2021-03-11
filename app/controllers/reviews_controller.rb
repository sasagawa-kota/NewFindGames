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
      flash[:notice] = "コメントに成功しました"
      redirect_to topic_path topic
    else
      flash[:notice] = "コメントに失敗しました"
      redirect_to topic_path topic
    end
  end
  
  private
  def review_params
    params.require(:review).permit(:game_title, :game_reviewe, :score, :score2, :score3, :score4)
  end
end
