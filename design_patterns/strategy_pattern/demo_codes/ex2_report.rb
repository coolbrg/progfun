# Report Class
class Report
  attr_reader :title, :msgs
  attr_accessor :formatter

  def initialize(formatter)
    @title = 'Monthly Report'
    @msgs = ['Things going good', 'Things going well']
    @formatter = formatter
  end

  def output_report
    @formatter.output_report(self)
  end
end
