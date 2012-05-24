class ApplicationController < ActionController::Base
  protect_from_forgery
  
  def index
    render :inline => "<%= image_tag('rails.png') %>"
  end
end
