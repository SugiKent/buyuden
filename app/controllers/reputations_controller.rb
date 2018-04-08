class ReputationsController < ApplicationController
  def create
    @rep = Reputation.new(story_id: params[:story_id], rep_type: params[:rep_type])

    if @rep.save
      redirect_to request.referrer
    end
  end
end
