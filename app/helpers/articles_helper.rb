module ArticlesHelper
  def add_line_breaks(text)
    raw text.gsub(/\n/, "<br>"*2)
  end
end
