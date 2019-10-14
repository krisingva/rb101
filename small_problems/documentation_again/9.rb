# Down the Rabbit Hole Sometimes, the documentation is going to leave you
# scratching your head.

# In a very early assignment at Launch School, you are tasked with writing a
# program that loads some text messages from a YAML file. We do this with
# YAML::load_file:

# require 'yaml' MESSAGES = YAML.load_file('calculator_messages.yml')

# Find the documentation for YAML::load_file.

# Search for yaml on devdocs.io/ruby yielded results:
# https://devdocs.io/ruby~2.5/psych#method-c-load_file

# load_file(filename, fallback: false) Load the document contained in filename.
# Returns the yaml contained in filename as a Ruby object, or if the file is
# empty, it returns the specified default return value, which defaults to an
# empty Hash

# Also search on ruby-doc.org Standard Library yielded results:
# https://ruby-doc.org/stdlib-2.6.4/libdoc/psych/rdoc/Psych.html#method-c-load_file
# The YAML module is an alias of Psych, the YAML engine for Ruby.

# load_file(filename, fallback: false) Load the document contained in filename.
# Returns the yaml contained in filename as a Ruby object, or if the file is
# empty, it returns the specified fallback return value, which defaults to
# false.

# The two differ in the last word of the description.

