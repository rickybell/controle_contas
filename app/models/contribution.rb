class Contribution < ActiveRecord::Base
  belongs_to :matrix  
  before_create :generate_code
  has_many :transactions

  private
  def generate_code
    o = [('a'..'z'), ('A'..'Z'),('0'..'9')].map(&:to_a).flatten
    self.code =  "x" + (0...9).map { o[rand(o.length)] }.join
  end

end
