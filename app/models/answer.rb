class Answer < ActiveRecord::Base
    
        belongs_to :question
        
        def gravatar
        "http://www.gravatar.com/avatar/#{Digest::MD5::hexdigest(email.downcase)}"
    end
end
