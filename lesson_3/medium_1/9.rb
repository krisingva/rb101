# Consider these two simple methods:

def foo(param = "no")
  "yes"
end

def bar(param = "no")
  param == "no" ? "yes" : "no"
end

# What would be the return value of the following method invocation?
bar(foo)

# calling foo without a parameter returns "yes"
# calling bar with "yes" leaves param == "no" as false, so the return from the ternary operator will be "no"
# Final return will be "no"