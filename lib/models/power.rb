class Power < ActiveRecord::Base
  has_many :super_powers
  has_many :heros, through: :super_powers


  def self.top_three_powers
    # Returns the 3 strongest powers
      self.all.sort_by do |power|
        power.power_tier
      end.reverse.slice(0..2)
  end

  def same_heros_as
    # Returns an array of powers who share same heros
    powers_with_same_heros = []
    Power.all.each do |power|
      if self.heros == power.heros
        powers_with_same_heros << power.heros
      else
        "No Heros with the same powers!"
      end
    end
    powers_with_same_heros
  end








end
