require "pry"

def get_first_name_of_season_winner(data, season)
  season_winner = ""
  data[season].each do |person|
    if person.values.include?("Winner")
      season_winner = person["name"]
      season_winner = season_winner.split[0]
    end
  end
  season_winner = season_winner.split[0]
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    contestants.each do |person|
      if person["occupation"] == occupation
        return person["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, contestants|
    contestants.each do |person|
      if person["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    contestants.each do |person|
      if person["hometown"] == hometown
        return person["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  average_age = 0
  contestant_ages = []
  data[season].each do |person, value|
    contestant_ages << person["age"].to_i
  end
  average_age = contestant_ages.inject { |sum, x| sum + x}
  average_age = (average_age.to_f / contestant_ages.size).round
end
