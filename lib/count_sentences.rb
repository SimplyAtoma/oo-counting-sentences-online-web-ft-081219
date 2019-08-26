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
    count = 0
     split_sentence = self.split(".")
     split_sentence.each do |phrase|
       if phrase.sentence? 
         count += 1 
       end
       if question?
         count += 1 
       end
       if exclamation?
         count += 1 
       end
       puts phrase"\n"
       binding.pry
     end
     count
  end
end