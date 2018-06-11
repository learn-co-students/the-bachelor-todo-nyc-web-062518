def get_first_name_of_season_winner(data, season)
  # code here
  data.each do |seasonShow, profileArray|
      if seasonShow == season
        profileArray.each do |profile|
          if profile["status"] == "Winner"
            winnerFullName = profile["name"]
            winnerFullNameArray = winnerFullName.split(" ")
            return winnerFullNameArray[0]
          end
        end
      end
    end
end

def get_contestant_name(data, occupation)
  # code here
  data.each do |seasonShow, profileArray|
    profileArray.each do |profile|
      if profile["occupation"] == occupation
        puts profile["name"]
        return profile["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  # code here
  arrayOfContestants = []
  data.each do |seasonShow, profileArray|
    profileArray.each do |profile|
      if profile["hometown"] == hometown
        arrayOfContestants.push(profile["name"])
      end
    end
  end
  return arrayOfContestants.length()
end

def get_occupation(data, hometown)
  # code here
  arrayOfOccupations = []
  data.each do |seasonShow, profileArray|
    profileArray.each do |profile|
      if profile["hometown"] == hometown
        arrayOfOccupations.push(profile["occupation"])
      end
    end
  end
  return arrayOfOccupations[0]
end

def get_average_age_for_season(data, season)
  # code here
  arrayOfAges = []
  totalOfAges = 0.0
  remainder = 0
  decimal = 0.0
  average = 0.0
  data.each do |seasonShow, profileArray|
      if seasonShow == season
        profileArray.each do |profile|
          arrayOfAges.push(profile["age"])
        end
      end
    end
    arrayOfAges.each do |ageString|
      totalOfAges = totalOfAges + ageString.to_i
    end
    remainder = (totalOfAges % (arrayOfAges.length()))
    average = (totalOfAges/(arrayOfAges.length()))
    decimal = remainder/(arrayOfAges.length())
    if  decimal < 0.5
      return average.floor()
    else
      return average.ceil()
    end
end
