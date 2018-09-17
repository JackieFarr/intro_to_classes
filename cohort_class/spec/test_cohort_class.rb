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

  def test_set_new_student_name
    student_1 = CohortClass.new("Nyalls", "E25")
    student_1.name = "Leslie"
    assert_equal("Leslie", student_1.name)
  end






end
