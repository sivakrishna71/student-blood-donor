class FeedBacksController < ApplicationController
  load_and_authorize_resource
  layout 'www'
  before_filter :load_approved_feed_backs

  def new
  	
  end

  def create
    if @feed_back.save
      flash[:notice] = "Your Experience is added and is Pending approval"
      redirect_to feed_backs_path
    else
      render :action => 'new'
    end
  end

  def index
    
  end

private

  def load_approved_feed_backs
    #Presently loading all feed backs
    @feed_backs = FeedBack.all
  end
end
