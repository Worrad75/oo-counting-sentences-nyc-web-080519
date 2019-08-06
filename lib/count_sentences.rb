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
    i = 0
    count = 0
    
    while i < self.length do
      if !self[i-1] == "." || self[i] == "?" || self[i] == "!"
        count += 1 if is_ending?(self[i])
      end
      i +=1
    end
    
    count
  end
  
  def is_ending?(char)
    char == "." || char == "?" || char == "!"
  end
end