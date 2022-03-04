require 'pry'

class String

  def sentence?
    self[self.length - 1] == "."
  end

  def question?
    self[self.length - 1] == "?"
  end

  def exclamation?
    self[self.length - 1] == "!"
  end

  def count_sentences
    sentence_array = self.split(/\.|!|\?/)

    filtered_sentence_array = sentence_array.select do |b|
      b != ""
    end

    filtered_sentence_array.length
  end
end
