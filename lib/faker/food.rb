module Faker
  class Food < Base
    # flexible :food

    class << self
      def animal
        fetch('food.animal')
      end

      def dessert
        fetch('food.dessert')
      end

      def produce
        fetch('food.produce')
      end

      def sauce
        fetch('food.sauce') + ' sauce'
      end

      def menu_item
        (fetch('food.description.adjective') + ', ' + fetch('food.description.preparation') + ' ' + fetch('food.animal') + " in a #{self.sauce}").titleize
      end

      def price_thing
        random = Random.new
        "$" + ((random.rand(0..100.0) * 100).floor / 100.0).to_s  + ' ' + fetch('food.description.price')
      end
    end
  end
end
