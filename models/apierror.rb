class APIError
  attr_accessor :reason, :cause, :message, :localized_message, :stack_trace, :suppressed

  # :internal => :external
  def self.attribute_map
    {
      :reason => :reason,
      :cause => :cause,
      :message => :message,
      :localized_message => :localizedMessage,
      :stack_trace => :stackTrace,
      :suppressed => :suppressed

    }
  end

  def initialize(attributes = {})
    return if attributes.empty?
    # Morph attribute keys into undescored rubyish style
    if self.class.attribute_map[:"reason"]
      @reason = attributes["reason"]
    end
    if self.class.attribute_map[:"cause"]
      @cause = attributes["cause"]
    end
    if self.class.attribute_map[:"message"]
      @message = attributes["message"]
    end
    if self.class.attribute_map[:"localized_message"]
      @localized_message = attributes["localizedMessage"]
    end
    if self.class.attribute_map[:"stack_trace"]
      if (value = attributes["stackTrace"]).is_a?(Array)
          @stack_trace = value.map{ |v| StackTraceElement.new(v) }

        end
      end
    if self.class.attribute_map[:"suppressed"]
      if (value = attributes["suppressed"]).is_a?(Array)
          @suppressed = value.map{ |v| Throwable.new(v) }

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

