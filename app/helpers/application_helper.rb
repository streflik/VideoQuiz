#encoding: utf-8
module ApplicationHelper

  # page <title>

  def title(page_title)
    content_for(:title) { page_title }
    page_title
  end

def is_current?(options)
    if options[:action] == @current_action and options[:controller] == @current_controller
      "class='current'"
    end
end

def is_login?
    if @current_controller == "sessions" or @current_controller == "registrations" 
      "class='logincontainer'"
    end
end

end
