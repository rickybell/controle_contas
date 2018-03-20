# ActiveRecord::Base.extend Accnt

class ActiveRecord::Base
    def self.acts_as_account
        include Accnt 
    end
end  