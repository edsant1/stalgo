module ListInfo
	module CodeCounter

		#Count the lines of Ruby code in your app
		
		COUNTER = "find . -iname '*.rb' -type f -exec cat {} \\; | wc -l"
		HAS_MANY_SEARCH = "ack \" has_many \" -c | awk -F \":\" '{print $2,$1}' | grep -v \"0\" | sort -rn"
		LOC = "find . -iname '*.rb' -type f -exec wc -l {} \\; | sort -rn"

    def self.get_raw(command)
      `#{command}`
    end

	  def self.get_line_counter_relationships() 	
      get_raw(COUNTER).split("\n")
    end

  	#Sort the Ruby files in your project by number of has_many
    def self.get_has_many_relationships()
      get_raw(HAS_MANY_SEARCH).split("\n")
    end

    #Sort the Ruby files in project by LOC
    def self.get_sort_loc()
      get_raw(LOC).split("\n")
    end
	end
end
