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
     end
     split_sentence = self.split("?")
     split_sentence.each do |phrase|
       if question?
         count += 1 
       end
     end
     split_sentence = self.split("!")
     split_sentence.each do |phrase|
       if exclamation?
         count += 1 
       end
     end
     count
  end
end