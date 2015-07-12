# Base Formatter Class
# We can eliminate this class. Thanks to Dynamic Typing of Ruby
# as Passing any Formatter to Report class will work
class Formatter
  def output_report(context)
    puts "Title : #{context.title}"
    puts "Messages : #{context.msgs.inspect}"
    fail 'Abstract method called'
  end
end

# HTMLFormatter Class
class HTMLFormatter < Formatter
  def output_report(context)
    puts '<html>'
    puts '  <head>'
    puts "    <title>#{context.title}</title>"
    puts '  </head>'
    puts '  <body>'
    puts '    Data:'
    puts '    <ol>'
    context.msgs.each { |line| puts "    <li>#{line}</li>" }
    puts '    </ol>'
    puts "  </body>\n</html>"
  end
end

# PlainTextFormatter Class
class PlainTextFormatter < Formatter
  def output_report(context)
    puts "***** #{context.title} *****"
    context.msgs.each do |line|
      puts line
    end
  end
end
