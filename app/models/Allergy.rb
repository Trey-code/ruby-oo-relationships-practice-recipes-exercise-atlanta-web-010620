class Allergy
    attr_accessor :name
    
    @@all = []

    def initialize (user, ingredient)
        @ingredient = ingredient
        @user = user
        @@all << self
    end

    def self.all
        @@all
    end

end
