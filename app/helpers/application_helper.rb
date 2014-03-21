module ApplicationHelper

  def nav_link(text, link, classes = '')
    if current_page? link
      content_tag(:li, :class => "active #{classes}") do
        link_to( text, link)
      end
    else
      content_tag(:li, :class => classes) do
        link_to( text, link)
      end
    end
  end

end
