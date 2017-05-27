class String
  define_method(:replace) do |find, replace|
    regex = Regexp.new(find)
    string = self
    string.downcase().gsub(regex, find => replace)
  end
end
