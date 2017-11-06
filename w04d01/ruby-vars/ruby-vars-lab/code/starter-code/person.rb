class Person 

    def name
        # create a name variable
        name = "Steve"
    end 

    def age
        # create age variable here
        age = 20
    end

    def children
        # create children array here
        children = ["Luke", "Abass", "Bruce", "Boris"]

    end

    def address
        # create address hash here
        address = {
            house_number: 10,
            street: "Dat Road",
            town: "Mentalville",
            county: "Yorksheeer",
            postcode: "LS11 1BH",
            email_addresses: ["xxxx@hotmail.com", "xxxxx@hotmail.com"]
        }
    end

    def password

        # do not change these variables
        favourite_things = ["motorbike" , "cat" , "travel"]
        memorable_stuff = {
          birth_year: 1983,
          mothers_name: "Eve",
          birth_town: "Richmond"
        }

        password = "#{favourite_things[1]} #{memorable_stuff[:birth_town]}"

    end

end