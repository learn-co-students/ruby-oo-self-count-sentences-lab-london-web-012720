require 'pry'

class String

  def sentence?
    
 if self.end_with?(".") === true
  true
 else 
  false
 end
  end

  def question?
    if self.end_with?("?")
      true
    else
      false
    end

  end

  def exclamation?

    if self.end_with?("!")
      true 
    else
      false 
    end

  end

  def count_sentences

    if self.include?("?" && "!")
      self.split(/\?|!/).size
    else
  self.split(/ /).size 
    end


  end
end