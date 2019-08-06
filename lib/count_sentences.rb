require 'pry'

class String

  def sentence?
    self[-1] == "."
  end

  def question?
    self[-1] == "?"
  end

  def exclamation?
    self[-1] == "!"
  end

  def count_sentences
    count = 0
    self.each_char.with_index { |char, i| count += 1 if !is_ending?(self[i-1]) && is_ending?(self[i]) }
    
    count
  end
  
  def is_ending?(char)
    char == "." || char == "?" || char == "!"
  end
end