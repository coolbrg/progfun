# Report class produces report based on format as :plain or :html

class Report
  def initialize(title, texts)
    @title = title
    @texts = texts
  end

  def output_report(format)
    if format == :plain
      puts "===**** #{@title} ****==="
    elsif format == :html
      puts '<html>'
      puts '  <head>'
      puts "    <title>#{@title}</title>"
      puts '  </head>'
      puts '  <body>'
      puts '    Data:'
      puts '    <ol>'
    else
      raise "Unknown format: #{format}"
    end

    @texts.each do |line|
      if format == :plain
        puts line
      else
        puts "    <li>#{line}</li>"
      end
    end

    if format == :html
      puts '    </ol>'
      puts '  </body>'
      puts '</html>'
    end
  end
end
