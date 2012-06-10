class TrellinController < ApplicationController

  skip_before_filter :require_gm
  before_filter :require_trellin

  def history
    render_static_content('history')
  end

  def creation
    render_static_content('creation')
  end

  def time
    render_static_content('time')
  end

  def background
    render_static_content('background')
  end

  def organizations
    render_static_content('organizations')
  end

  def board
    render :google_group
  end

  def level_chart
    render :level_chart
  end

  def encounter
    render :encounter
  end

  def push
    Pusher['test_channel'].trigger('greet', {
        :greeting => "Hello there!"
      })
  end

  def render_static_content(title)
    text_block = TextBlock.tagged_with('page').find_by_title(title)
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
