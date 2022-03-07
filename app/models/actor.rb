class Actor < ActiveRecord::Base
    has_many :characters
    has_many :shows, through: :characters
  
    def full_name
        "#{self.first_name} #{self.last_name}"
    end

    def list_roles
        array = self.characters
        return_array = []

        array.each do |character|
            return_array << "#{character.name} - #{character.show.name}"
        end
        return_array
    end

end