class CommandLineInterface

  def execution
    # opening_welcome
    main_menu
    input = get_user_input
    input = enter_option(input)
    main_case(input)
  end

  def opening_welcome
    puts "Welcome User"
  end

  def main_menu
    puts "Here are your options"
    options = ["Show All Heros", "Show All Powers", "Show Heros Powers", "Top three heros", "Top three powers", "Exit"]
    options.each_with_index do |option, i|
      puts "#{i + 1}. #{option}"
    end
  end

  def get_user_input
    puts "Please enter a number"
    user_input = gets.chomp
  end

  def enter_option(user_input)
    commands = (1..6).to_a.collect{|n| "#{n}"}
    until commands.include?(user_input)
      puts ">>> '#{user_input}' is an invalid choice of command. <<<"
      main_menu
      user_input = get_user_input
    end
    user_input
  end

# --------------------- Methods -------------------------

  def show_all_heros
    puts "Current task: Show all Heros"
    Hero.all.each_with_index do |hero, i|
      puts "#{i + 1}. #{hero.name} (#{hero.strength}, #{hero.weakness}, #{hero.power_level})"
    end
  end

  def show_all_powers
    puts "Current task: Show all Powers"
    Power.all.each_with_index do |power, i|
      puts "#{i + 1}. #{power.name} (#{power.description}, #{power.power_tier})"
    end
  end

  def show_heros_powers
    puts "Current task: Display Heros Powers"
    Hero.all.each_with_index do |hero, i|
      puts "#{i + 1}. #{hero.name}"
    end
    puts "Enter Hero number: "
  end

  def top_heros
    puts "Current task: Show top three heros"
    Hero.top_three_heros.each do |hero|
      puts "#{hero.name}: Heros Strength: #{hero.strength}, Heros Weakness: #{hero.weakness}, Power level: #{hero.power_level}."
    end
  end

  def top_powers
    puts "Current task: Show top three powers"
    Power.top_three_powers.each do |power|
      puts "#{power.name}: Power Description #{power.description}, Power Tier #{power.power_tier}."
    end
  end

  def mutual_powers(input)
    puts "Current task: Show same powers"
    input = gets.chomp
    if input == Hero.any?
    input.same_powers_as
    else
      puts "Please enter a correct hero"
    end
  end

  def exit_program
    puts "Thank you!"
    puts "┈┈┈┈┈┈▕▔╲"
    puts "┈┈┈┈┈┈┈▏▕"
    puts "┈┈┈┈┈┈┈▏▕▂▂▂"
    puts "▂▂▂▂▂▂╱┈▕▂▂▂▏"
    puts "▉▉▉▉▉┈┈┈▕▂▂▂▏"
    puts "▉▉▉▉▉┈┈┈▕▂▂▂▏"
    puts "▔▔▔▔▔▔╲▂▕▂▂▂I"
    Kernel.exit(true)
  end

# ------------------- Cases ------------------------

  def main_case(input)
      case input
      when "1"
        system "clear"
        show_all_heros
      when "2"
        system "clear"
        show_all_powers
      when "3"
        system "clear"
        show_heros_powers
      when "4"
        system "clear"
        top_heros
      when "5"
        system "clear"
        top_powers
      when "6"
        system "clear"
        exit_program
      end
      execution
  end

  def heros_powers_main_case(input)
    case input
    when "1"
    when "2"
    when "3"
    when "4"
    when "5"
    when "6"
    when "7"
    when "8"
    when "9"
    when "10"
    when "11"
    when "12"
    when "13"
    when "14"
    when "15"
    end
  end











end
