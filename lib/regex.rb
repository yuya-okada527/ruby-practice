def convert_hash_syntax(old_syntax)
  old_syntax.gsub(/\s*=>\s*/, ": ")
end