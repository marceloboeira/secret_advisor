class Advice < ActiveRecord::Base

  belongs_to :advisor, class_name: "User"
  belongs_to :advised, class_name: "User"

  validates :message, presence: true
  validates :anonymously, presence: true
  
end
