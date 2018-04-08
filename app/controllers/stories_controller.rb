class StoriesController < ApplicationController
  def index
    @stories = Story.includes(:reputations).all.order('created_at DESC')
  end
  def show
    @story = Story.find(params[:id])
  end
  def new
    @story = Story.new
  end

  def create
    @story = Story.new(story_params)

    if @story.save
      flash[:teal] = 'あなたの武勇伝を登録しました。'
      redirect_to story_path(@story)
    else
      flash[:red] = '登録できませんでした。やり直してください。'
      redirect_to stories_path
    end
  end

  private
  def story_params
    params.require(:story).permit(:title, :content)
  end
end
