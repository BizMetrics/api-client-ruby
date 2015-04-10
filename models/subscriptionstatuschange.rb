class SubscriptionStatusChange
  attr_accessor :new_status, :date_of_change, :force

  # :internal => :external
  def self.attribute_map
    {
      :new_status => :newStatus,
      :date_of_change => :dateOfChange,
      :force => :force

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"new_status"]
      @new_status = attributes["newStatus"]
    end
    if self.class.attribute_map[:"date_of_change"]
      @date_of_change = attributes["dateOfChange"]
    end
    if self.class.attribute_map[:"force"]
      @force = attributes["force"]
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

