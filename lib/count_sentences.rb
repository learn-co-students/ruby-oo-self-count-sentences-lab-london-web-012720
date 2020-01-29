require 'pry'

class String

  def sentence?
    self[-1] == '.'
  end

  def question?
    self[-1] == '?'
  end

  def exclamation?
    self[-1] == '!'
  end

  def count_sentences
    sentence = self.split(/\.|\?|!/).uniq
    length = sentence.length
    length -= 1 if sentence.include? ''
    length
  end
end