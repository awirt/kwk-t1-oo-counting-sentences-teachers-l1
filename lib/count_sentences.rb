require 'pry'

class String

  def sentence?
    if self.end_with?(".")
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

  def count_sentences #need to say self.count_sentences and produce a number
    split_self = self.split(" ")
    split_self.select do |element|
      element.sentence? || element.question? || element.exclamation?
    end
  end
end