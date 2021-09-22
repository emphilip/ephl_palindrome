# frozen_string_literal: true

require_relative "ephl_palindrome/version"

#   class Error < StandardError; end
#   # Your code goes here...
# end

module EphlPalindrome

  def palindrome?
    processed_content == processed_content.reverse
  end


  private

  def processed_content
    to_s.scan(/[a-z]/i).join.downcase
  end

end

class String
  include EphlPalindrome
end

class Integer
  include EphlPalindrome
end
