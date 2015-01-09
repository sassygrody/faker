require File.expand_path(File.dirname(__FILE__) + '/test_helper.rb')

class TestFakerFood < Test::Unit::TestCase
  def setup
    @tester = Faker::Food
    @animal_list = I18n.translate('faker.food.animal')
  end

  def test_animal
    animal_to_eat = @tester.animal
    assert @tester.animal.match(/\w+/)
    assert @animal_list.include?(animal_to_eat)
  end
end
