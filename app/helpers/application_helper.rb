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
end
