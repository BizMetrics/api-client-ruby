class Subscription
  attr_accessor :ext_activation_date, :ext_end_date, :name, :subs_interval, :amount, :canceled_at, :status, :client_id, :plan_id, :classifiers, :external_id, :ext_creation_instant, :ext_last_modified_instant

  # :internal => :external
  def self.attribute_map
    {
      :ext_activation_date => :extActivationDate,
      :ext_end_date => :extEndDate,
      :name => :name,
      :subs_interval => :subsInterval,
      :amount => :amount,
      :canceled_at => :canceledAt,
      :status => :status,
      :client_id => :clientId,
      :plan_id => :planId,
      :classifiers => :classifiers,
      :external_id => :externalId,
      :ext_creation_instant => :extCreationInstant,
      :ext_last_modified_instant => :extLastModifiedInstant

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"ext_activation_date"]
      @ext_activation_date = attributes["extActivationDate"]
    end
    if self.class.attribute_map[:"ext_end_date"]
      @ext_end_date = attributes["extEndDate"]
    end
    if self.class.attribute_map[:"name"]
      @name = attributes["name"]
    end
    if self.class.attribute_map[:"subs_interval"]
      @subs_interval = attributes["subsInterval"]
    end
    if self.class.attribute_map[:"amount"]
      @amount = attributes["amount"]
    end
    if self.class.attribute_map[:"canceled_at"]
      @canceled_at = attributes["canceledAt"]
    end
    if self.class.attribute_map[:"status"]
      @status = attributes["status"]
    end
    if self.class.attribute_map[:"client_id"]
      @client_id = attributes["clientId"]
    end
    if self.class.attribute_map[:"plan_id"]
      @plan_id = attributes["planId"]
    end
    if self.class.attribute_map[:"classifiers"]
      if (value = attributes["classifiers"]).is_a?(Array)
          @classifiers = value.map{ |v| Map[string,string].new(v) }

        end
      end
    if self.class.attribute_map[:"external_id"]
      @external_id = attributes["externalId"]
    end
    if self.class.attribute_map[:"ext_creation_instant"]
      @ext_creation_instant = attributes["extCreationInstant"]
    end
    if self.class.attribute_map[:"ext_last_modified_instant"]
      @ext_last_modified_instant = attributes["extLastModifiedInstant"]
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

