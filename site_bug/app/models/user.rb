class User < ActiveRecord::Base
  has_many :bugs
end
