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
    link_to :back, class: 'btn btn-primary' do
      fa_icon('chevron-left') +
        ' Back'
    end
  end

  def parse_url(url)
    url = "http://" + url unless url[/^http/]

    url
  end
end
