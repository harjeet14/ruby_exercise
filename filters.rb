# In this file we define the methods to help filter out candidates
# This way, we keep these methods separated from other potential parts of the program

def find(id, candidates)
  for candidate in candidates do
    if candidate[:id] = id 
      return candidate
    else 
      return nil
  end
end
end


def experienced?(candidate)
  if candidate[:years_of_experience] >= 2
    return true
  else
    return false
  end
end

def qualified_candidates(candidates = [])

  # pass candidates array in this function
  # loop on that array
  # check which of these candidates qualify
  # keep adding those in result array and return that array

candidates.select do |candidate|
   is_experienced?(candidate)&&
   github_points?(candidate)&&
   ruby_python(candidate)&&
   age?(candidate)
end
end

def is_experienced?(candidate)
  if candidate[:years_of_experience] > 0
    return candidate
   end
  end
   
def github_points? (candidate)
    if candidate[:github_points] >=100
      return candidate
    end
  end
def ruby_python(candidate)
  if candidate[:languages].include?("Ruby") ||  candidate[:languages].include?("Python")
    return true
  end 
end   
def date_applied? (candidate)
  if candidate[:date_applied] >= 15.days.ago.to_date
    return candidate
  end
end
def age? (candidate)
  if candidate[:age] >=17
    return candidate
  end
end

# More methods will go below
def ordered_by_qualifications(candidates)
  return candidates.sort_by {|candidate| [candidate[:years_of_experience], candidate[:github_points]]  }.reverse
end
#objects.sort_by {|obj| obj.attribute}