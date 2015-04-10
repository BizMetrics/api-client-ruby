class RefundEvent
  attr_accessor :original_amount, :subs_id, :amount, :id, :external_id, :client, :subscription, :ext_creation_instant

  # :internal => :external
  def self.attribute_map
    {
      :original_amount => :originalAmount,
      :subs_id => :subsId,
      :amount => :amount,
      :id => :id,
      :external_id => :externalId,
      :client => :client,
      :subscription => :subscription,
      :ext_creation_instant => :extCreationInstant

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"original_amount"]
      @original_amount = attributes["originalAmount"]
    end
    if self.class.attribute_map[:"subs_id"]
      @subs_id = attributes["subsId"]
    end
    if self.class.attribute_map[:"amount"]
      @amount = attributes["amount"]
    end
    if self.class.attribute_map[:"id"]
      @id = attributes["id"]
    end
    if self.class.attribute_map[:"external_id"]
      @external_id = attributes["externalId"]
    end
    if self.class.attribute_map[:"client"]
      @client = attributes["client"]
    end
    if self.class.attribute_map[:"subscription"]
      @subscription = attributes["subscription"]
    end
    if self.class.attribute_map[:"ext_creation_instant"]
      @ext_creation_instant = attributes["extCreationInstant"]
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

