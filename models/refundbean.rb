class RefundBean
  attr_accessor :ext_id, :amount, :date_of_change

  # :internal => :external
  def self.attribute_map
    {
      :ext_id => :extId,
      :amount => :amount,
      :date_of_change => :dateOfChange

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"ext_id"]
      @ext_id = attributes["extId"]
    end
    if self.class.attribute_map[:"amount"]
      @amount = attributes["amount"]
    end
    if self.class.attribute_map[:"date_of_change"]
      @date_of_change = attributes["dateOfChange"]
    end
    

  end

  def to_body
    body = {}
    self.class.attribute_map.each_pair do |key, value|
      body[value] = self.send(key) unless self.send(key).nil?
    end
    body
  end
end

