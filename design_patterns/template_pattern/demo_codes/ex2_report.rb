# Report class produces report based on format as :plain or :html

class Report
  def initialize(title, texts)
    @title = title
    @texts = texts
  end

  def output_report
    output_start
    output_head
    output_body_start
    output_body
    output_body_end
    output_end
  end

  private
  def output_start
  end

  def output_head
  end

  def output_body_start
  end

  def output_body
    @texts.each do |line|
      output_line(line)
    end
  end

  def output_line(line)
    raise 'Called abstract method: output_line'
  end

  def output_body_end
  end

  def output_end
  end
end
