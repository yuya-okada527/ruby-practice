def to_hex(r, g, b)
  "##{r.to_s(16).rjust(2, "0")}#{g.to_s(16).rjust(2, "0")}#{b.to_s(16).rjust(2, "0")}"
end

def to_ints(color_code)
  codes = color_code.slice(1, 2), color_code.slice(3, 2), color_code.slice(5, 2)
  codes.map { |i| i.to_i(16) }
end
