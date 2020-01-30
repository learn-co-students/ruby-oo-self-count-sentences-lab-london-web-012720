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
    self.tr("!?",".").split(".").reject{|s| s.empty?}.count
  end
end

#"This is a string! It has three sentences. Right?".count_sentences
#binding.pry

#"This, well, is a sentence. This is too!! And so is this, I think? Woo..."