require 'minitest/autorun'

require './ex1_report'

class ReportTest < MiniTest::Test
  def test_report
    title = 'This is title'
    msgs = ["This is message1", "This is message2"]

    report = Report.new(title, msgs)
    assert_equal title, report.instance_variable_get(:@title)
    assert_equal msgs, report.instance_variable_get(:@texts)
  end
end
