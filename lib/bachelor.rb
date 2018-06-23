
require_relative "../lib/bachelor.rb"
require 'json'

data = JSON.parse(File.read('spec/fixtures/contestants.json'))

def get_first_name_of_season_winner(data, season)
  data[season].find{ |x| x["status"] == "Winner" }.fetch("name").split(" ")[0]
end

def get_contestant_name(data, occupation)
  found = nil
  while !found
    data.each do |season, list|
      current = list.find {|contestant| contestant.fetch("occupation") == occupation }
      if current
        found = current.fetch("name")
      end
    end
  end
found
end

def count_contestants_by_hometown(data, hometown)
  counter = 0
  data.each do |season, list|
    list.each do |contestant|
      if contestant.fetch("hometown") == hometown
        counter += 1
      end
    end
  end
  counter
end

def get_occupation(data, hometown)
  found = nil
  while !found
    data.each do |season, list|
      current = list.find {|contestant| contestant.fetch("hometown") == hometown }
      if current
        found = current.fetch("occupation")
      end
    end
  end
found
end

def get_average_age_for_season(data, season)
  total = 0
  data[season].each do |contestant|
    total += contestant.fetch("age").to_f
  end
  (total/data[season].length).round
end

# get_first_name_of_season_winner(data, "season 18")

# get_contestant_name(data, "Chiropractic Assistant")

# get_average_age_for_season(data, "season 18")
