require './ex1_report'

report = Report.new('Monthly Report', ['Things are going', 'Things are running'])
puts "===== Plain Report ========"
report.output_report(:plain)

puts "===== Html Report ========"
report.output_report(:html)

puts "===== Unknown Format Report ========"
report.output_report(:xml)
