class Period
  attr_accessor :hours, :minutes, :seconds, :millis, :months, :years, :days, :weeks, :period_type, :values, :field_types

  # :internal => :external
  def self.attribute_map
    {
      :hours => :hours,
      :minutes => :minutes,
      :seconds => :seconds,
      :millis => :millis,
      :months => :months,
      :years => :years,
      :days => :days,
      :weeks => :weeks,
      :period_type => :periodType,
      :values => :values,
      :field_types => :fieldTypes

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"hours"]
      @hours = attributes["hours"]
    end
    if self.class.attribute_map[:"minutes"]
      @minutes = attributes["minutes"]
    end
    if self.class.attribute_map[:"seconds"]
      @seconds = attributes["seconds"]
    end
    if self.class.attribute_map[:"millis"]
      @millis = attributes["millis"]
    end
    if self.class.attribute_map[:"months"]
      @months = attributes["months"]
    end
    if self.class.attribute_map[:"years"]
      @years = attributes["years"]
    end
    if self.class.attribute_map[:"days"]
      @days = attributes["days"]
    end
    if self.class.attribute_map[:"weeks"]
      @weeks = attributes["weeks"]
    end
    if self.class.attribute_map[:"period_type"]
      @period_type = attributes["periodType"]
    end
    if self.class.attribute_map[:"values"]
      if (value = attributes["values"]).is_a?(Array)
          @values = value

        end
      end
    if self.class.attribute_map[:"field_types"]
      if (value = attributes["fieldTypes"]).is_a?(Array)
          @field_types = value.map{ |v| DurationFieldType.new(v) }

        end
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

