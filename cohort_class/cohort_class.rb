# For this part we want you to make a class that represents a CodeClan student.
#
# Create a class called Student that takes in a name (String) and a cohort (string - e.g "E18", "G6", etc) when an new instance is created.
# Create a couple of Getter methods, one that returns the name property and one that returns the cohort property of the student.
# Add in Setter methods to update the students name and what cohort they are in.
# Create a method that gets the student to talk (eg. Returns "I can talk!).
# Create a method that takes in a students favourite programming language and returns it as part of a string (eg. student1.say_favourite_language("Ruby") -> "I love Ruby").


class CohortClass#

attr_accessor :name, :cohort

def initialize(input_name, input_cohort)
  @name = input_name
  @cohort = input_cohort
end

def talk()
  return "I can talk!"
end

def say_favourite_language(favourite_language_input)
  return "I love #{favourite_language_input}"
end

end
