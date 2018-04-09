class StoriesController < ApplicationController
  def index
    @stories = Story.includes(:reputations).all.order('created_at DESC')

    @hot_stories = Story.joins(:reputations).where(reputations: {rep_type: 1}).group(:story_id).order('count(story_id) desc')

    @reputations = Reputation.group(:story_id, :rep_type).pluck('story_id, rep_type, count(story_id)')
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
