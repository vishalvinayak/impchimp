require 'csv'

namespace :data do |
	|
	task :import_pizzas => :environment do
		puts "Importing the Pizzas"

		#f = File.open(Rails.root.join('data', 'pizza.csv'))
		#pizza_data=f.read

		#puts pizza_data

		CSV.foreach(Rails.root.join('data', 'pizza.csv')) do |row|

			
			value={
				:name => row[0],
				:lat => row[1].to_f,
				:lon => row[2].to_f
			}

			Pizza.create(value)

			puts value.inspect


		end
	end
end