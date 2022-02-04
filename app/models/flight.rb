class Flight < ApplicationRecord
 belongs_to :arrival_airport, class_name: "Airport"
 belongs_to :departure_airport, class_name: "Airport"

 def self.search(search)
    #if search
        #where(departure_airport_id: search)
    #else
      all
    #end
  end

end

