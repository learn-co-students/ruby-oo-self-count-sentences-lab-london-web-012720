require 'pry'

class String

  def sentence?
    self.end_with?(".") ? true : false
  end

  def question?
    self.end_with?("?") ? true : false
  end

  def exclamation?
    self.end_with?("!") ? true : false
  end

  def count_sentences
    self.split(/\.|\?|!/).delete_if{|w| (w.size < 2) }.count
  end
end

##################

# string = String.new
# p "This, well, is a sentence. This is too!! And so is this, I think? Woo...".count_sentences
# reg = self.split(" ").length
#####
# # self.split(". ")
# # self.split("! ")
# # # self.length
#self.gsub(/[^a-zA-Z.!?]/, ' ').split(/\.|\?|!/).delete_if{|w| w < 2}
# self.scan(/\w+\.!\?/)
