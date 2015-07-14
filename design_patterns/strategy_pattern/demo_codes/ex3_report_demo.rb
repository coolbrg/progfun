require './ex3_report'

puts 'Report in HTML Format : '
HTML_FORMATTER = lambda do |context|
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
report = Report.new(&HTML_FORMATTER)
report.output_report

puts 'Plain Format Report : '
report = Report.new do |context|
  puts "***** #{context.title} *****"
  context.msgs.each do |line|
    puts line
  end
end
report.output_report
