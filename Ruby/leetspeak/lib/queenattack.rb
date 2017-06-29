class Array
  define_method(:queen_attack?) do |other_piece|
    if self[0] == other_piece[0] || self[1] == other_piece[1]
      true
    elsif (self[0] - other_piece[0]).abs == (self[1] - other_piece[1]).abs
      true
    else
      false
    end
  end
end
