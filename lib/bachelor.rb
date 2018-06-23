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

  puts winner = data[season].find { |x| x["status"] == "Winner" }
  winner.fetch("name").split(" ")[0]

end

def get_contestant_name(data, occupation)
  # code here
end

def count_contestants_by_hometown(data, hometown)
  # code here
end

def get_occupation(data, hometown)
  # code here
end

def get_average_age_for_season(data, season)
  # code here
end

get_first_name_of_season_winner(data, "season 18")
