

module Custom

	class MethodResult

    def initialize result, messages, object 
      @messages = messages
      @result = self.failure
      @object = object
    end

		def messages
      @messages
    end

    def result
      @result 
    end

    def object
      @object 
    end

    def self.success
      'success'
    end
    
    def self.failure
      'failure'
    end

	end


  class BuddyAssignmentRequest

    def initialize email_message
      @email_message = email_message
    end

    def email_message
      @email_message
    end

  end

end

