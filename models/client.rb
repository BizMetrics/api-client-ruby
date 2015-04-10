class Client
  attr_accessor :name, :email, :description, :classifiers, :external_id, :ext_creation_instant, :ext_last_modified_instant

  # :internal => :external
  def self.attribute_map
    {
      :name => :name,
      :email => :email,
      :description => :description,
      :classifiers => :classifiers,
      :external_id => :externalId,
      :ext_creation_instant => :extCreationInstant,
      :ext_last_modified_instant => :extLastModifiedInstant

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"name"]
      @name = attributes["name"]
    end
    if self.class.attribute_map[:"email"]
      @email = attributes["email"]
    end
    if self.class.attribute_map[:"description"]
      @description = attributes["description"]
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

