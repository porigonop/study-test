class User < ActiveRecord::Base
  has_many :bugs
  validates :username,
    presence: true,
    length: {minimun: 6, maximum: 50},
    uniqueness: true
  has_secure_password
  validates :password, presence:true, length: { minimum:6, maximum:255 }
end
