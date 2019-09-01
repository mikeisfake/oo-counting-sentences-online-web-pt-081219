require 'pry'

class String

  def sentence?
    self.end_with?(".")
  end

  def question?
    self.end_with?("?")
  end

  def exclamation?
    self.end_with?("!")
  end

  def count_sentences
    delimiters = [".","!","?"]
    array = self.split(Regexp.union(delimiters))
    clean_array = array.reject
    array.count
  end
end