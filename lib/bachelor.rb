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

  winner = data[season].select { |x| x["status"] == "Winner" }
  # .find
  puts winner
  puts "winner.length is #{winner.length}"
  puts "winner[0].length = #{winner[0].length}"
  puts "winner[0][:name] = #{winner[0][:name]}"
  puts "data[season] is an array? #{data[season].is_a?(Array)}"
  puts "winner is a array? #{winner.is_a?(Array)}"
  puts nameHash = winner[0].select { |x| x == "name" }
  winner_name = nameHash[0]
  puts winner_name
  puts "winner_name is a object? #{winner_name.is_a?(Object)}"

  # select { |x| x[:status] == "Winner" }
  # puts data.find { |x| x == season}
  # puts data.is_a?(Array)
  # winner = data.find[season.to_sym].find { |x| x[:status] == "Winner" }
  # first_name = winner("name").split(" ")[0]
  # first_name = winner_name.split(" ")[0]
  # puts first_name
  # first_name
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
