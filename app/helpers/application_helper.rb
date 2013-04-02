module ApplicationHelper

  def homework_url(week, quarter = nil, year = 2013)
    "http://github.com/cspp52553#{"-" + quarter.to_s + "-" + year.to_s if quarter}/week#{week}".html_safe
  end

  def piazza_url(quarter = 'spring2013')
    "https://piazza.com/uchicago/#{quarter}/cspp52553/home".html_safe
  end

  def syllabus_path(quarter = 'spring2013')
    "/#{quarter}/syllabus.pdf".html_safe
  end

  def slides_url(quarter = 'spring2013', week_number)
    "/#{quarter}/slides-week#{week_number}.pdf"
  end

  def handout_url(filename, quarter = 'spring2013')
    "/#{quarter}/#{filename}.pdf"
  end
end
