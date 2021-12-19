# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './candidates'
require './filters'

## Your test code can go here

# pp @candidates

# pp find(9,@candidates)

# pp experienced?(@candidates[1])
# pp qualified_candidates(@candidates)
pp ordered_by_qualifications(@candidates)

#List out the ruby files that are loaded (required) when we run ruby main.rb
#What does the pp method do? How is it different from puts (try it out!)?
#Why is ActiveSupport being used (what happens if we take it out)?
