  class User < ActiveRecord::Base
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  has_many :advices, class_name: "Advice", foreign_key: "advised_id"
  has_many :sent_advices, class_name: "Advice", foreign_key: "advisor_id"
end
