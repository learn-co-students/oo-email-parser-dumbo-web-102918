# Build a class EmailParser that accepts a string of unformatted
# emails. The parse method on the class should separate them into
# unique email addresses. The delimiters to support are commas (',')
# or whitespace (' ').

require "pry"
require "byebug"

class EmailParser
  attr_reader :email

  def initialize(string)
    @email = string
  end

  def parse
    # byebug
    if self.email.include?(",")
      temp = self.email.delete(",").split(" ")
    else
      temp = self.email.split(" ")
    end
    result = []
    temp.each{|email|  result << email unless result.include?(email)}
    result
  end

end
