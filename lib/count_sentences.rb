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
    counter = 0
    self.each_char.with_index do |char, idx|
      if char == "." || char == "?" || char == "!"
        if char[idx - 1] != char && idx != 0
          counter += 1
        end
      end
    end
    counter
  end
end
