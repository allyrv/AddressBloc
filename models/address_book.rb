require_relative 'entry'

	class AddressBook
		attr_reader :entries

		def initialize
			@entries = []
		end
end

	 def add_entry(name, phone_number, email)
     #create a variable to store the insertion 'index'
     index = 0
     entries.each do |entry|
 
       if name < entry.name
       	break
       end
       index+= 1
     end
     #insert new entry
     entries.insert(index, Entry.new(name, phone_number, email))
   end
end