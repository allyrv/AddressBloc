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

	def remove_entry(name, phone_number, email)
   		
     	delete = nil
     	
     	@entries.each do |entry|
 		if name == entry.name && phone == entry.phone_number && email == entry.email
 			delete_entry = entry
       	end
   	end

   	@entries.delete(delete_entry)
end