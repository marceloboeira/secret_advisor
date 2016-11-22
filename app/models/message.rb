class Message
  include Mongoid::Document

  field :to, type: String
  field :content, type: String
end
