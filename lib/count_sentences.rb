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
      count += 1 if self[i] == "." || self[i] == "?" || self[i] == "!"
    end
  end
end