class Question < ActiveRecord::Base
        has_many :answers
        def gravatar
        "http://www.gravatar.com/avatar/#{Digest::MD5::hexdigest(email.downcase)}"
    end
end
