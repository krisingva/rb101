# two-level array:

# arr = [[:symbol1, 'cot'], [:symbol2, 'bed'], [:symbol3,'mat']]

# new_arr = arr.sort_by do |subarray|
#             subarray[1][1]
#           end

# p new_arr
# => [[:symbol3, "mat"], [:symbol2, "bed"], [:symbol1, "cot"]]

# three-level array:

# arr = [
#   [[:symbol1, 'a'], [:symbol2, 'b'], [:symbol3,'cot']],
#   [[:symbol1, 'c'], [:symbol2, 'd'], [:symbol3,'mat']],
#   [[:symbol1, 'e'], [:symbol2, 'f'], [:symbol3,'bed']]
# ]

# new_arr = arr.sort_by do |subarray|
#             subarray[2][1]
#           end

# p new_arr

# => [
#   [[:symbol1, "e"], [:symbol2, "f"], [:symbol3, "bed"]],
#   [[:symbol1, "a"], [:symbol2, "b"], [:symbol3, "cot"]],
#   [[:symbol1, "c"], [:symbol2, "d"], [:symbol3, "mat"]]
# ]

# three-level array with nested hashes, sort by integers (not strings):

arr = [
  {title: 'Solitude', author: 'Marquez', published: '1967'},
  {title: 'Gatsby', author: 'Fitzgerald', published: '1925'},
  {title: 'Peace', author: 'Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'Joyce', published: '1922'}
]

new_arr = arr.sort_by do |hash|
  hash[:published].to_i
end

p new_arr

# => [{:title=>"Peace", :author=>"Tolstoy", :published=>"1869"}, {:title=>"Ulysses", :author=>"Joyce", :published=>"1922"}, {:title=>"Gatsby", :author=>"Fitzgerald", :published=>"1925"}, {:title=>"Solitude", :author=>"Marquez", :published=>"1967"}]