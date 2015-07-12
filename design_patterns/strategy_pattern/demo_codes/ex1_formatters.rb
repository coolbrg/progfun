# Base Formatter Class
class Formatter
  def output_report(title, msgs)
    puts "Title : #{title}"
    puts "Messages : #{msgs.inspect}"
    fail 'Abstract method called'
  end
end

# HTMLFormatter Class
class HTMLFormatter < Formatter
  def output_report(title, msgs)
    puts '<html>'
    puts '  <head>'
    puts "    <title>#{title}</title>"
    puts '  </head>'
    puts '  <body>'
    puts '    Data:'
    puts '    <ol>'
    msgs.each { |line| puts "    <li>#{line}</li>" }
    puts '    </ol>'
    puts "  </body>\n</html>"
  end
end

# PlainTextFormatter Class
class PlainTextFormatter < Formatter
  def output_report(title, msgs)
    puts "***** #{title} *****"
    msgs.each do |line|
      puts line
    end
  end
end
