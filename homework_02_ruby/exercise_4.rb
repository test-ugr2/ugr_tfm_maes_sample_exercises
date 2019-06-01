#!/usr/bin/env ruby
# frozen_string_literal: true

# Question:
# Write a function that get the content of the <title> tag of a given url
#
# Suppose the following parameter is supplied to the program:
# https://www.google.es
# Then, the output should be:
# Google
#
# Hints:
# Use the open-uri module to read the web content
# Use a regular expression to process the HTML

# rubocop:disable Security/Open
def get_title(url)

 #  Insert your code here

end
# rubocop:enable Security/Open

# Program entrypoint
if $PROGRAM_NAME == __FILE__

  if ARGV.length == 1
    url = ARGV[0]
    result = get_title(url)
    puts result

  else
    puts "Usage: #{$PROGRAM_NAME} <url>"
  end
end
