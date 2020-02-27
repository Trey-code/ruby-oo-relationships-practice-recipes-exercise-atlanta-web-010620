class Recipe

    attr_reader :users, :ingredients, :allergens

    @@all = []

    def intitialize(usrs, ingredients)
        @users = users
        @ingredients = ingredients 
        @allergens = allergens
        @@all << self
    end

    def Recipe.all
        @@all 
    end
    
    def self.ingredients
        self.all.map { |a| a.ingredient }
    end

    def most_popular
        all.max_by do |recipe|
            recipe.users.count
    end
end

    def add_ingredients(ingredients)
        

        
    end

    def allergens
        Allergen.all.select { |a| a.user == self }.map {|a| a.ingredient }
    end




end