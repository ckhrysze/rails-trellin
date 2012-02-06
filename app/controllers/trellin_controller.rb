class TrellinController < ApplicationController

  before_filter :require_trellin

  def history
    render_static_content( TextBlock.tagged_with('page').find_by_title('history') )
  end

  def creation
    render_static_content( TextBlock.tagged_with('page').find_by_title('creation') )
  end

  def time
    render_static_content( TextBlock.tagged_with('page').find_by_title('time') )
  end

  def background
    render_static_content( TextBlock.tagged_with('page').find_by_title('background') )
  end

  def render_static_content(text_block)
    @content = text_block.nil? ? "No content found" : text_block.content
    render :static_page
  end

  private

  def require_trellin
    unless trellin?
      flash[:error] = "Trellin members only"
      redirect_to :root      
    end
  end

  def trellin?
    @user && @user.trellin?
  end

end
