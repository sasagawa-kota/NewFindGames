class TopicsController < ApplicationController
  def index
    @topics = Topic.all
  end
  def new
    @topic = Topic.new
  end
  
  def create
    @topic = current_user.topics.new(topic_params)
    
    if @topic.save
      redirect_to topics_path, success: '投稿に成功しました'
    else
      flash.now[:danger] = "投稿に成功しました"
      render :new
    end
  end
  
  def destroy
    @topic = Topic.find(params[:id])
    @topic.destroy
    redirect_to topic_url
  end
  
  private
  
  def topic_params
    params.require(:topic).permit(:package_image, :title, :description)
  end
end
