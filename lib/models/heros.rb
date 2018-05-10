class Hero < ActiveRecord::Base
  has_many :super_powers
  has_many :powers, through: :super_powers

  def self.top_three_heros
    # Returns the 3 strongest heros
      self.all.sort_by do |hero|
        hero.power_level
      end.reverse.slice(0..2)
  end

  def same_powers_as
    # Returns an array of heros who share same powers
    heros_with_same_powers = []
    Hero.all.each do |hero|
      if self.powers == hero.powers
        heros_with_same_powers << hero
      else
        "No Powers with the same heros!"
      end
    end
    heros_with_same_powers.delete(self)
    heros_with_same_powers
  end

  def self.whose_stronger(first_hero, second_hero)
    # Returns which hero is stronger
    if first_hero.power_level > second_hero.power_level
      first_hero
    elsif second_hero.power_level > first_hero.power_level
      second_hero
    elsif first_hero.power_level == second_hero.power_level
      "They are evenly matched"
    end
  end



end
