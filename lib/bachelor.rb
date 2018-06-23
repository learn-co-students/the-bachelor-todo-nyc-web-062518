
require_relative "../lib/bachelor.rb"
require 'json'

data = JSON.parse(File.read('spec/fixtures/contestants.json'))

def get_first_name_of_season_winner(data, season)
  data[season].find{ |x| x["status"] == "Winner" }["name"].split(" ")[0]
end

def get_contestant_name(data, occupation)
  data.each do |season, contestants|
    current = contestants.find {|contestant| contestant["occupation"] == occupation }
    if current
      return current["name"]
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, list|
    list.each do |contestant|
      if contestant["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |season, contestants|
    current = contestants.find {|contestant| contestant["hometown"] == hometown }
    if current
      return current["occupation"]
    end
  end
end

def get_average_age_for_season(data, season)
  total = 0
  data[season].each do |contestant|
    total += contestant["age"].to_f
  end
  (total/data[season].length).round
end

# get_first_name_of_season_winner(data, "season 18")

# get_contestant_name(data, "Chiropractic Assistant")

# get_average_age_for_season(data, "season 18")
