module ApplicationHelper
  def flash_key(key)
    case key
    when :success
      :success
    when :info
      :info
    when :warning
      :warning
    when :danger, :error
      :danger
    end
  end

  def link_back
    link_to :back
  end

  def parse_url(url)
    unless url[/www/]
      url = "www." + url
    end
    unless url[/http/]
      url = "http://" + url
    end
  end
end
