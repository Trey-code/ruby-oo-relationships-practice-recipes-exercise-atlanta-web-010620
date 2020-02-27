class User
    attr_reader :name

    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def declare_allergy(ingredient)
        Allergy.new(self, ingredient)
    end

    def allergens(allergy)
        allergy.all.select {|allergy| allergy.user == self}.map {|allergy| allergy.ingredient}
    end

    def add_recipe_card(date, rating, recipe)
        RecipeCard.new(date, rating, self, recipe)
    end

    def recipes
        RecipeCard.all.select {|recipe_card|recipe_card.user == self.map} 
        # {|recipe_card|recipe_card.recipe}
    end

    def top_three_recipes
        recipe_cards =  RecipeCard.all.select {|recipe_card| recipe_card.user == self}
        recipe_cards.max_by(3) {|recipe_card| recipe_card.rating}

        top_three = recipe_cards.max_by(3) {|recipe_card| recipe_card.rating}

        top_three.map {|recipe_card| recipe_card.recipe}
    end

    def most_recent_recipe
        recipes.last
    end
    
end