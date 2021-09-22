# frozen_string_literal: true

require_relative "ephl_palindrome/version"

# module EphlPalindrome
#   class Error < StandardError; end
#   # Your code goes here...
# end

class String

  def palindrome?
    processed_content == processed_content.reverse
  end


  private

  def processed_content
    scan(/[a-z]/i).join.to_s.downcase
  end

end
