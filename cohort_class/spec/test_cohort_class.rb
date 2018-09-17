require('minitest/autorun')
require('minitest/rg')
require_relative('../cohort_class.rb')


class TestCohortClass < MiniTest::Test


  def test_student_name
    student_name = CohortClass.new("Jen", "E25")
    assert_equal("Jen", student_name.name)
  end

  def test_student_cohort
    student_cohort = CohortClass.new("Jackie", "E25")
    assert_equal("E25", student_cohort.cohort)
  end

  def test_set_new_student_name_or_cohort
    student_1 = CohortClass.new("Nyalls", "E25")
    student_1.name = "Leslie"
    student_1.cohort = "E24"
    assert_equal("Leslie", student_1.name)
    assert_equal("E24", student_1.cohort)
  end

  def test_student_talks
    student_1 = CohortClass.new("Jen", "E25")
    assert_equal("I can talk!", student_1.talk)
  end

  def test_favourite_language
    student_1 = CohortClass.new("Jackie", "E25")
    favourite_language = student_1.say_favourite_language("Ruby")
    assert_equal("I love Ruby", favourite_language)

  end




end
