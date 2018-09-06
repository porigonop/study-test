class Bug < ActiveRecord::Base
  belongs_to :user


  scope :open, -> { where(state:0) }
  scope :assigned, -> { where(state:1) }
  scope :closed, -> { where(state:2) }
end
