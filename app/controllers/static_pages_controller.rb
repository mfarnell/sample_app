class StaticPagesController < ApplicationController
  
  def home
    if logged_in?
      @micropost  = current_user.microposts.build
      @feed_items = current_user.feed.paginate(page: params[:page])
    end
    
    @title = "Home"
  end

  def help
    @title = "Help"
  end

  def about
    @title = "About"
  end

  def contact
    @title = "Contact"
  end

  def marvin_
  end

end
