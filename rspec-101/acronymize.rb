def acronymize(sentence)
  sentence.split(' ').map { |word| word.capitalize[0]}.join
end
