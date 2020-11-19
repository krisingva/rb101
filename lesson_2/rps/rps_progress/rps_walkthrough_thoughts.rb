# Things to consider:
# 1. Notice how the display_results method calls the prompt method. What happens
#    if you move the display_results method definition above the prompt method
#    definition? Does it still work?
#    Yes
# 2. Create another method called test_method at the very top, before the prompt
#    method definition.

# A) Now try invoking the newly created method from just after the prompt method
# definition. Does it work? Yes B) Now try invoking the method again just before
# the prompt method definition. Does it work? Why is there a different result?
#    No, it gives an error message: rps_walkthrough.rb:5:in `test_method':
# undefined method `prompt' for main:Object (NoMethodError) The ruby file gets
# read from top, when it hits the test_method invokation, it has only read the
# test_method definition and not the prompt method definition so it gets stuck
# trying to execute a method that is has not read yet.
# 3. How would you use the display_results method differently if it returned a
#    string, as opposed to outputting the string directly?
#    If it returned a string, you would have to puts the return of the method  #    separately outside the method definition. puts display_results(choice,
#    computer_choice)
# 4. Running Rubocop on this code generates a lot of complaints about the
#    display_results method being too complex. Can you think of a way to
#    mitigate? We'll tackle this in an upcoming assignment, but try to think
#    about a possible solution.
#    Yes, my way:
# if (choice_array.include?("rock")) && (choice_array.include?("paper"))
#   winner = "paper"
# elsif (choice_array.include?("rock")) && (choice_array.include?("scissors"))
#   winner = "rock"
# elsif (choice_array.include?("scissors")) && (choice_array.include?("paper"))
#   winner = "scissors"
# end
