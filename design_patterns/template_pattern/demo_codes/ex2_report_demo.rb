require './ex2_report'
require './ex2_report_formats'

title = 'Monthly Report'
texts = ['Things are going', 'Things are running']

puts "======== HTML Report ========="
report = HTMLReport.new(title, texts)
report.output_report

puts "======== Plain Text Report ========="
report = PlainTextReport.new(title, texts)
report.output_report
