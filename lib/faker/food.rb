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

      def phrases
       [ "If we #{verb} the #{noun}, we can get to the #{abbreviation} #{noun} through the #{adjective} #{abbreviation} #{noun}!",
         "We need to #{verb} the #{adjective} #{abbreviation} #{noun}!",
         "Try to #{verb} the #{abbreviation} #{noun}, maybe it will #{verb} the #{adjective} #{noun}!",
         "You can't #{verb} the #{noun} without #{ingverb} the #{adjective} #{abbreviation} #{noun}!",
         "Use the #{adjective} #{abbreviation} #{noun}, then you can #{verb} the #{adjective} #{noun}!",
         "The #{abbreviation} #{noun} is down, #{verb} the #{adjective} #{noun} so we can #{verb} the #{abbreviation} #{noun}!",
         "#{ingverb} the #{noun} won't do anything, we need to #{verb} the #{adjective} #{abbreviation} #{noun}!",
         "I'll #{verb} the #{adjective} #{abbreviation} #{noun}, that should #{noun} the #{abbreviation} #{noun}!"
         ]
      end

      def price_thing
        random = Random.new
        "$" + ((random.rand(0..100.0) * 100).floor / 100.0).to_s  + ' ' + fetch('food.description.price')
      end
    end
  end
end
