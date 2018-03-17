class Physical < ApplicationRecord
    has_one :account, :as => :person
end
