class Admin::StoriesController < AdminController
  def index
    @stories = Story.all
  end
  def destroy
    @story = Story.find(params[:id])

    if @story.destroy
      redirect_to admin_stories_path
    end
  end
end
