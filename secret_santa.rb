santas = [{firstname: "Luke", lastname: "Skywalker"},
          {firstname: "Leia",  lastname: "Skywalker"},
          {firsname: "Toula", lastname: "Portokalos"},
          {firstname: "Gus", lastname: "Portokalos"}, 
          {firstname: "Bruce", lastname: "Wayne"},
          {firstname: "Virgil", lastname: "Brigman"}]

santas.each do |key|
  choose_name = santas[:firstname]
  family_name = santas[:lastname]
  filtered_array = santas
  santas.each do |key|
    if santas[key].has_value?(family_name)
      filtered_array.delete_at[key]
    end  
  end    
  puts filtered_array
  picked_name = filtered_array.sample
  puts "#{choose_name} is secret santa for #{picked_name}"
end  