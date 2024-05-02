# HTML version
report = Report.new(HTMLFormatter.new)
report.output_report

# Because the Strategy pattern is based on composition and delegation, rather than on inheritance,
# it is easy to switch strategies at runtime. We simply swap out the strategy object:
report.formatter = PlainTextFormatter.new
report.output_report

# HTML version using a proc
HTML_FORMATTER = lambda do |context|
  puts('<html>')
  puts('  <head>')
  puts("    <title>#{context.title}</title")
  puts('  </head>')
  puts('  <body>')
  context.text.each do |line|
    puts("    <p>#{line}</p>")
  end
  puts('  </body>')
  puts('</html>')
end

report = Report.new &HTML_FORMATTER
report.output_report

# Plain text version using a proc object
report = Report.new do |context|
  puts "*** #{context.title} ***"
  context.text.each do |line|
    puts line
  end
end

report.output_report