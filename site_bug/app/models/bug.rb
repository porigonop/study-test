class Bug < ActiveRecord::Base
  belongs_to :user
  has_and_belongs_to_many :user


  scope :open, -> { where(state:0) }
  scope :assigned, -> { where(state:1) }
  scope :closed, -> { where(state:2) }
end
