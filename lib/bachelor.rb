require "pry"
def get_first_name_of_season_winner(data, season)
name = ""
  data.each do |round, contestants|
    if round == season
    contestants.each do |lady|

      if lady["status"] == "Winner"

       name = lady["name"]
      end
      #binding.pry
    end
    end
  end
  name = name.split.first
name
end

def get_contestant_name(data, occupation)
name = ""
  data.each do |season, contestants|
    contestants.each do |lady|
      if
        lady["occupation"] == occupation
        name = lady["name"]
      end

      end
    end
  name
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |season, contestants|
    contestants.each do |lady|
      if
        lady["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  names = []
  job = ""
  data.each do |season, contestants|
  contestants.each do |lady|
      if lady["hometown"] == hometown
       names << lady["occupation"]
      end
    end
  end
  #binding.pry
  job = names[0]
end

def get_average_age_for_season(data, season)
  # code here
  av_age = []
  data.each do |round, contestants|
    if round == season
      contestants.each do |lady|
        av_age << lady["age"]
      end
    end
  end

  total = av_age.length
  nums = 0
  av_age.each do |age|
    nums = nums + age.to_i
  end
  tally = (nums/total.to_f).round
  tally
end
