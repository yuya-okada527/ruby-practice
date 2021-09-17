def convert_hash_syntax(old_syntax)
  old_syntax.split("\n").inject("") { |result, row| result += row.sub(/\s*=>\s*/, ": ") + "\n" }
end