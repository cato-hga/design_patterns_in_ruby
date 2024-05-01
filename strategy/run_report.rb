# HTML version
report = Report.new(HTMLFormatter.new)
report.output_report

# Because the Strategy pattern is based on composition and delegation, rather than on inheritance,
# it is easy to switch strategies at runtime. We simply swap out the strategy object:
report.formatter = PlainTextFormatter.new
report.output_report