
require_relative "../lib/bachelor.rb"
require 'json'

data = JSON.parse(File.read('spec/fixtures/contestants.json'))

# data = json File.read('./spec/fixtures/contestants.json')
# data = {
#   "season 30": [
#     {
#       "name":      "Beth Smalls",
#       "age":       "26",
#       "hometown":  "Great Falls, Virginia",
#       "occupation":"Nanny/Freelance Journalist",
#       "status":    "Winner"
#     },
#     {
#       "name":       "Becca Tilley",
#       "age":        "27",
#       "hometown":   "Shreveport, Louisiana",
#       "occupation": "Chiropractic Assistant",
#       "status":     "Eliminated Week 8"
#     }
#   ],
#   "season 29": [
#     {
#       "name":      "Ashley Yeats",
#       "age":       "24",
#       "hometown":  "Denver, Colorado",
#       "occupation":"Dental Assitant",
#       "status":    "Winner"
#     },
#     {
#       "name":       "Sam Grover",
#       "age":        "29",
#       "hometown":   "New York, New York",
#       "occupation": "Entertainer",
#       "status":     "Eliminated Week 6"
#     }
#   ]
# }
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
  counter = 0
  data[season].each do |contestant|
    total += contestant.fetch("age").to_i
    counter += 1
  end
  (total/counter).ceil
end

# get_first_name_of_season_winner(data, "season 18")

# get_contestant_name(data, "Chiropractic Assistant")

get_average_age_for_season(data, "season 18")
