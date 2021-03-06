class ExternalId
  attr_accessor :external_id

  # :internal => :external
  def self.attribute_map
    {
      :external_id => :externalId

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"external_id"]
      @external_id = attributes["externalId"]
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

