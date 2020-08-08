module SuburbSeeder
	def self.seed_suburbs
state_id_ouagadougou= Spree::State.where(abbr: "ouagadougou").first.id
state_id_bobodioulasso= Spree::State.where(abbr: "bobodioulasso").first.id



		connection = ActiveRecord::Base.connection()

		puts " Seeding BF suburbs"
		connection.execute("
			INSERT INTO suburbs (postcode,name,state_id,latitude,longitude) VALUES
($$1001$$,$$AIRPORTOUAGADOUGOU$$,#{state_id_ouagadougou},12.354939,-1.514107),
($$2001$$,$$AIRPORTBOBODIOULASSO$$,#{state_id_bobodioulasso},11.157601,-4.330220)
        ")
	end
end
