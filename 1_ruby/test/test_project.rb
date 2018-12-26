require 'minitest/pride'
require 'minitest/autorun'
require 'pry'

require './lib/project'

class ProjectTest< MiniTest::Test
  def test_it_exists_and_takes_args
    project = Project.new(10, 3, 5)

    assert_instance_of Project, project
  end

  def test_finds_full_array
    project = Project.new(10, 3, 5)

    projected = [3, 5, 6, 9]
    result = project.full_arr
    assert_equal result, projected
  end

  def test_finds_sum_of_all_multiples
    project = Project.new(10, 3, 5)

    projected = 23
    result = project.sum
    assert_equal result, projected
  end
end