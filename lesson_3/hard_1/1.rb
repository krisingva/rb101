# What do you expect to happen when the greeting variable is referenced in the
# last line of the code below?

  if false
    greeting = “hello world”
  end

  greeting

  # My answer: Anything after an if key word will evaluate to true unless it is
  # specifically a statement that returns false. In the case of false, the
  # branch following the if statement is not executed but it is still evaluated
  # so the computer "knows of the existence" of the variable greeting. The last
  # line of code will return "hello world" in irb but running the code itself
  # will not give any output.
  # Wrong! greeting returns nil, see below.

  # LS Solution:
  # greeting is nil here, and no "undefined method or local variable" exception
  # is thrown. Typically, when you reference an uninitialized variable, Ruby
  # will raise an exception, stating that it’s undefined. However, when you
  # initialize a local variable within an if block, even if that if block
  # doesn’t get executed, the local variable is initialized to nil.