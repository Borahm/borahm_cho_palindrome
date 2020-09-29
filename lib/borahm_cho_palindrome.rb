require "borahm_cho_palindrome/version"

module BorahmChoPalindrome 

    # Returns true for a palindrome, false otherwise.
    def palindrome?
      processed_content == processed_content.reverse
    end
  
    private
  
      # Returns content for palindrome testing.
      def processed_content
        to_s.scan(/[a-zA-Z\w]/i).join.downcase
      end
  end
  
  class String
    include BorahmChoPalindrome
  end

  class Integer
    include BorahmChoPalindrome
  end