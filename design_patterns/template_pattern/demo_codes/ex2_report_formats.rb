# Different Reports
require './ex2_report'

# HTML Reporter
class HTMLReport < Report
  def output_start
    puts '<html>'
  end

  def output_head
    puts '  <head>'
    puts "    <title>#{@title}</title>"
    puts '  </head>'
  end

  def output_body_start
    puts '  <body>'
  end

  def output_line(line)
    puts "    <p>#{line}</p>"
  end

  def output_body_end
    puts '  </body>'
  end

  def output_end
    puts '</html>'
  end
end

# Plain Text Reporter
class PlainTextReport < Report
  def output_start
  end

  def output_head
    puts("**** #{@title} ****")
    puts
  end

  def output_body_start
  end

  def output_line(line)
    puts line
  end

  def output_body_end
  end

  def output_end
  end
end

