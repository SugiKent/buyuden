module ApplicationHelper
  def hbr(str)
    str = html_escape(str)
    str.gsub(/\r\n|\r|\n|¥n/, "<br />").html_safe
  end

end
