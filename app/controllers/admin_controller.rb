class AdminController < ApplicationController
  before_action :basic_auth

  def basic_auth
    authenticate_or_request_with_http_basic do |user,pass|
      user == ENV["BASIC_NAME"] && pass == ENV["BASIC_PASSWORD"]
    end
  end

end
