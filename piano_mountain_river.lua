--File Name: empowered_communities.lua

--Empowered Communities

-- This program is written in Lua and is designed to empower communities to build strong foundations and enrich the lives of their members. 

--Create tables to store data
local people = {} 
local resources = {}
local events = {}
 
--Create functions to add, view, and modify data stored in tables
--Add Person
function addPerson(name, age, gender, interests)
	person = {name = name, age = age, gender = gender, interests = interests}
	table.insert(people, person)
end

--View People
function viewPerson(name)
	for i,v in ipairs(people) do
		if v.name == name then
			return v
		end
	end
	return false
end

--Modify Person
function modifyPerson(name, newAge, newGender, newInterests)
	for i,v in ipairs(people) do
		if v.name == name then
			v.age = newAge
			v.gender = newGender
			v.interests = newInterests
		end
	end
end

--Delete Person
function deletePerson(name)
	for i,v in ipairs(people) do
		if v.name == name then
			table.remove(people, i)
		end
	end
end

--Add Resource
function addResouce(name, type, description)
	resource = {name = name, type = type, description = description}
	table.insert(resources, resource)
end

--View Resource
function viewResource(name)
	for i,v in ipairs(resources) do
		if v.name == name then
			return v
		end
	end
	return false
end

--Modify Resource
function modifyResource(name, newType, newDescription)
	for i,v in ipairs(resources) do
		if v.name == name then
			v.type = newType
			v.description = newDescription
		end
	end
end

--Delete Resource
function deleteResource(name)
	for i,v in ipairs(resources) do
		if v.name == name then
			table.remove(resources, i)
		end
	end
end

--Add Event
function addEvent(name, date, location, description, people)
	event = {name = name, date = date, location = location, description = description, people = people} 
	table.insert(events, event)
end

--View Event
function viewEvent(name)
	for i,v in ipairs(events) do
		if v.name == name then
			return v
		end
	end
	return false
end

--Modify Event
function modifyEvent(name, newDate, newLocation, newDescription, newPeople)
	for i,v in ipairs (events) do
		if v.name == name then
			v.date = newDate
			v.location = newLocation
			v.description = newDescription
			v.people = newPeople
		end
	end
end

--Delete Event
function deleteEvent(name)
	for i,v in ipairs(events) do
		if v.name == name then
			table.remove(events, i)
		end
	end
end

--Create a function to run the program
function main()
	print("Welcome to the Empowered Community Program!")
	print("Please select from the following options:")
	
--Create a while loop to loop through choices
	while true do 
		print("1. Add a person.")
		print("2. View a person.")
		print("3. Modify a person.")
		print("4. Delete a person.")
		print("5. Add a resource.")
		print("6. View a resource.")
		print("7. Modify a resource.")
		print("8. Delete a resource.")
		print("9. Add an event.")
		print("10. View an event.")
		print("11. Modify an event.")
		print("12. Delete an event.")
		print("13. Quit")
		
		local choice = io.read()
		
		if choice == '1' then
			print("Enter person name:")
			local name = io.read()
			print("Enter person age:")
			local age = io.read()
			print("Enter person gender:")
			local gender = io.read()
			print("Enter person interests:")
			local interests = io.read()
			
			addPerson(name, age, gender, interests)
			
		elseif choice == '2' then
			print("Enter person name:")
			local name = io.read()
			
			local person = viewPerson(name)
			
			if person then 
				print("Name: " .. person.name) 
				print("Age: " .. person.age)
				print("Gender: " .. person.gender)
				print("Interests: " .. person.interests)
			else 
				print("Person not found")
			end 
		
		elseif choice == '3' then 
			print("Enter person name:")
			local name = io.read()
			print("Enter person new age:")
			local newAge = io.read()
			print("Enter person new gender:")
			local newGender = io.read()
			print("Enter person new interests:")
			local newInterests = io.read()
			
			modifyPerson(name, newAge, newGender, newInterests)
			
			local person = viewPerson(name)
			
			print("Updated person:")
			print("Name: " .. person.name) 
			print("Age: " .. person.age)
			print("Gender: " .. person.gender)
			print("Interests: " .. person.interests)
			
		elseif choice == '4' then
			print("Enter person name:")
			local name = io.read()
			
			deletePerson(name)
			
			local person = viewPerson(name)
			
			if not person then 
				print("Person deleted.")
			end 
		
		elseif choice == '5' then
			print("Enter resource name:")
			local name = io.read()
			print("Enter resource type:")
			local type = io.read()
			print("Enter resource description:")
			local description = io.read()
			
			addResource(name, type, description)
			
		elseif choice == '6' then 
			print("Enter resource name:")
			local name = io.read()
			
			local resource = viewResource(name)
			
			if resource then 
				print("Name: " .. resource.name) 
				print("Type: " .. resource.type)
				print("Description: " .. resource.description)
			else 
				print("Resource not found")
			end 
		
		elseif choice == '7' then 
			print("Enter resource name:")
			local name = io.read()
			print("Enter resource new type:")
			local newType = io.read()
			print("Enter resource new description:")
			local newDescription = io.read()
			
			modifyResource(name, newType, newDescription)
			
			local resource = viewResource(name)
			
			print("Updated resource:")
			print("Name: " .. resource.name) 
			print("Type: " .. resource.type)
			print("Description: " .. resource.description)
			
		elseif choice == '8' then
			print("Enter resource name:")
			local name = io.read()
			
			deleteResource(name)
			
			local resource = viewResource(name)
			
			if not resource then 
				print("Resource deleted.")
			end 
			
		elseif choice == '9' then
			print("Enter event name:")
			local name = io.read()
			print("Enter event date:")
			local date = io.read()
			print("Enter event location:")
			local location = io.read()
			print("Enter event description:")
			local description = io.read()
			print("Enter people attending:")
			local people = io.read()
			
			addEvent(name, date, location, description, people)
			
		elseif choice == '10' then 
			print("Enter event name:")
			local name = io.read()
			
			local event = viewEvent(name)
			
			if event then 
				print("Name: " .. event.name) 
				print("Date: " .. event.date)
				print("Location: " .. event.location)
				print("Description: " .. event.description)
				print("People Attending: " .. event.people)
			else 
				print("Event not found")
			end 
		
		elseif choice == '11' then 
			print("Enter event name:")
			local name = io.read()
			print("Enter event new date:")
			local newDate = io.read()
			print("Enter event new location:")
			local newLocation = io.read()
			print("Enter event new description:")
			local newDescription = io.read()
			print("Enter new people attending:")
			local newPeople = io.read()
			
			modifyEvent(name, date, location, description, people)
			
			local event = viewEvent(name)
			
			print("Updated event:")
			print("Name: " .. event.name)
			print("Date: " .. event.date) 
			print("Location: " .. event.location)
			print("Description: " .. event.description)
			print("People Attending: " .. event.people)
			
		elseif choice == '12' then
			print("Enter event name:")
			local name = io.read()
			
			deleteEvent(name)
			
			local event = viewEvent(name)
			
			if not event then 
				print("Event deleted.")
			end 
		
		elseif choice == '13' then
			break
		end 
	end 
	
	print("Thank you for using the Empowered Community program!")
end

main()