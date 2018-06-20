def get_first_name_of_season_winner(data, season)
  # code here
  output = nil
  data.each do |seas, person_array|
    if seas == season
      person_array.each do |person|
        if person["status"] == "Winner"
          output = person["name"]
        end
      end  
    end    
  end
  output = output.split(" ")[0]
end

def get_contestant_name(data, occupation)
  # code here
  output = nil
  data.each do |seas, person_array|
    person_array.each do |person|
      if person["occupation"] == occupation
        output = person["name"]
      end
    end
  end
  output
end

def count_contestants_by_hometown(data, hometown)
  # code here
  count = 0 
  data.each do |seas, person_array|
    person_array.each do |person|
      if person["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  # code here
  output = []
  data.each do |seas, person_array|
    person_array.each do |person|
      if person["hometown"] == hometown
        output << person["occupation"]
      end
    end
  end
  output[0]
end

def get_average_age_for_season(data, season)
  # code here
  ave_age = 0
  age_array = []
  data.each do |seas, person_array|
    if seas == season
      person_array.each do |person|
        age_array << person["age"].to_f
      end  
    end    
  end
  total_age = 0
  age_array.each {|age| total_age += age}
  ave_age = total_age / age_array.length 
  ave_age.round 
end
