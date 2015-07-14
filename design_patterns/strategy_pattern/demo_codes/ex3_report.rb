# Report Class using Proc
class Report
  attr_reader :title, :msgs
  attr_accessor :formatter

  def initialize(&formatter)
    @title = 'Monthly Report'
    @msgs = ['Things going good', 'Things going well']
    @formatter = formatter
  end

  def output_report
    @formatter.call(self)
  end
end
