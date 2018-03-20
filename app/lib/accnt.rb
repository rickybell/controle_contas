module Accnt
    def self.included(base)
        base.has_one :account, :as => :accnt, :autosave => true 
    end

    def account_with_autobuild
        account_without_autobuild || build_account
    end

    def method_missing(meth, *args, &blk)
        account.send(meth, *args, &blk)
    rescue NoMethodError
        super
    end

end