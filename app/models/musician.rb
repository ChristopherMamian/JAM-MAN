class Musician < ActiveRecord::Base
  has_many :styles
  has_many :instruments

end
