class Contribution < ApplicationRecord
  attr_reader :code
  attr_accessor :value, :reserval
  belongs_to :matrix  
  def initialize(attributes = {})
    super(attributes)
    self.value = attributes[:value]
    self.reserval = false
    self.code = generate_code
  end
  private
  def generate_code
    o = [('a'..'z'), ('A'..'Z'),('0'..'9')].map(&:to_a).flatten
    return "x" + (0...9).map { o[rand(o.length)] }.join
  end

end
