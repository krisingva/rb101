# How would you order this array of hashes based on the year of publication of
# each book, from the earliest to the latest?

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

# Notes:
# Object: Array with elements of hashes. Each hash has three key-value pairs
# Algorithm: Have to iterate through the hashes and sort by hashes' published:
# value from lowest to highest.

new_arr = books.sort_by do |hash|
  hash[:published].to_i
end

p new_arr

# => [{:title=>"War and Peace", :author=>"Leo Tolstoy", :published=>"1869"},
# {:title=>"Ulysses", :author=>"James Joyce", :published=>"1922"}, {:title=>"The
# Great Gatsby", :author=>"F. Scott Fitzgerald", :published=>"1925"},
# {:title=>"One Hundred Years of Solitude", :author=>"Gabriel Garcia Marquez",
# :published=>"1967"}]

# LS:
# books.sort_by do |book|
#   book[:published]
# end

# => [
# {:title=>"War and Peace", :author=>"Leo Tolstoy", :published=>"1869"},
# {:title=>"Ulysses", :author=>"James Joyce", :published=>"1922"},
# {:title=>"The Great Gatsby", :author=>"F. Scott Fitzgerald", :published=>"1925"},
# {:title=>"One Hundred Years of Solitude", :author=>"Gabriel Garcia Marquez", :published=>"1967"}
# ]

# We can use sort_by and access a particular value in each hash by which to
# sort, as long as those values have a <=> method.

# In this case, all the values for :published are strings so we know that we can
# compare them. Since all the values in question are four characters in length,
# in this case we can simply compare the strings without having to convert them
# to integers.