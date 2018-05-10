class SuperPower < ActiveRecord::Base
  belongs_to :hero
  belongs_to :power
end
