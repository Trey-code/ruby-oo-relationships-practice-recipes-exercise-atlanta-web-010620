class Ingredient
    attr_accessor :name

    @@all = []
    
    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end

    def self.most_common_allergen
        all.max_by do |ingredient|
            ingredient.users.count
        end
    end


end
