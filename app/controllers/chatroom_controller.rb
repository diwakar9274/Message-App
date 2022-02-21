class ChatroomController < ApplicationController
  before_action :require_user
  def index
  	@message = Message.new
  	@messages = Message.all
  end

  private
  def require_user
  	if !current_user.present?
  		flash[:notice] = "Please sign In first"
  		redirect_to new_user_session_path
  	end
  end
end
