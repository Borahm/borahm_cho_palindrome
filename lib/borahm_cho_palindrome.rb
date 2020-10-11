require "borahm_cho_palindrome/version"

module BorahmChoPalindrome 

    # Returns true for a palindrome, false otherwise.
    def palindrome?
      if processed_content.empty?
        false
      else
        processed_content == processed_content.reverse
      end
    end

end
    private
  
      # Returns content for palindrome testing.
      def processed_content
        to_s.scan(/[\w]/i).join.downcase
      end
  
  class String
    include BorahmChoPalindrome
  end

  class Integer
    include BorahmChoPalindrome
  end

