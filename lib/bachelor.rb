require "pry"

def get_first_name_of_season_winner(data, season)
  data.each do |season_number, season_hash|
    if season_number == season
      season_hash.each do |contestant|
        if contestant["status"] == "Winner"
          return contestant["name"].split[0]
        end
      end
    end
  end
end

def get_contestant_name(data, occupation)
  data.each do |season_number, season_hash|
    season_hash.each do |contestant|
      if contestant["occupation"] == occupation
        return contestant["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
counter = 0
  data.each do |season_number, season_hash|
    season_hash.each do |contestant|
      if contestant["hometown"] == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  data.each do |season_number, season_hash|
    season_hash.each do |contestant|
      if contestant["hometown"] == hometown
        return contestant["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_array = []
  data.each do |season_number, season_hash|
    if season_number == season
      season_hash.each do |contestant|
        age_array << contestant["age"].to_i
      end
    end
  end
  avg = age_array.reduce(:+).to_f/age_array.length.to_f
  avg.round
end
