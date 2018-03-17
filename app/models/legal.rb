class Legal < ApplicationRecord
    has_one :account, :as => :person
end
