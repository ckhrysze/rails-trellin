class StaticController < ApplicationController

  skip_before_filter :require_login, :only => [:index]
  skip_before_filter :require_gm

  def index; end

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

end
