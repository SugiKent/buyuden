class ReputationsController < ApplicationController
  def create
    @rep = Reputation.new(story_id: params[:story_id], rep_type: params[:rep_type])

    @rep.save
  end
end
