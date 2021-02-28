class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end
  def new
    @topic = Topic.new
  end
  
  def create
    @topic = current_user.topics.new(topic_params)
    #binding.pry
    if @topic.save
      redirect_to topics_path, notice: '投稿に成功しました'
    else
      flash.now[:danger] = "投稿に失敗しました"
      render :new
    end
  end
  
  def show
    @topic = Topic.find(params[:id])
    @reviews = @topic.reviews
    @review = @topic.reviews.build
  end
  
  def edit
    @topic = Topic.find(params[:id])
  end
  
  def update
    topic = Topic.find(params[:id])
    #binding.pry
    topic.update!(topic_params)
    redirect_to topic_url, notice: "記事「#{topic.title}を更新しました」"
  end
  
  def destroy
    topic = Topic.find(params[:id])
    topic.destroy
    redirect_to topics_path,notice: "記事「#{topic.title}を削除しました」"
  end
  
  private
  
  def topic_params
    params.require(:topic).permit(:package_image, :title, :description, :category_id)
  end
end
