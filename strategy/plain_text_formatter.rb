# Here's the formatter for plain text:
class PlainTextFormatter < Formatter
  def output_report(title, text)
    puts("**** #{title} ****")
    text.each do |line|
      puts(line)
    end
  end
end