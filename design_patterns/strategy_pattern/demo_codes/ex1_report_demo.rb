require './ex1_report'
require './ex1_formatters'

puts 'Report in HTML Format : '
report = Report.new(HTMLFormatter.new)
report.output_report

puts 'Choose Plain Format Report : '
report.formatter = PlainTextFormatter.new
report.output_report
