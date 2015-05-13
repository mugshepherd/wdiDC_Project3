namespace :seed do
  desc "TODO"
  task lemur_seed: :environment do
    puts "database seeded!"
  	require 'csv'    
		csv_text = File.read('db/seed_lemurs.csv')
		csv = CSV.parse(csv_text, :headers => true)
		csv.each do |row|
		  Lemur.create!(row.to_hash)
		end
  end

end
