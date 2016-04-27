require "sinatra"

get "/" do

	@title = "Welcome to choose your own adventure"
	@story = "Choose where you would like to begin"
	@option_a = "Hawaii"
	@option_b = "Soviet Union"
	@option_c = "Space"
	@decision = "Space"
	@decision1 = "Hawaii"
	erb :index
end

get "/direction/:choice" do

	choice = params[:choice]
	case choice
		when "Hawaii"
			@title = "Welcome to Hawaii"
			@story = "Would you like to hike or surf?"
			@option_a = "Hike"
			@option_b = "Surf"
			erb :index
				when "Hike"
					@title = "You have been biten by snake. Go to Space"
					@decision = "Go to Space"
					@destination = "Space"
					erb :decision
				when "Surf"
					@ending = "You have been eaten by a shark"
					erb :ending
		when "Soviet_Union"
			@title = "Welcome to the Soviet Union"
			@story = "Would you like to play the lottery or move to Hawaii?"
			@option_a = "Hawaii"
			@option_b = "Play Lottery"
			erb :index
				when "Hawaii"
					@decision = "Hawaii"
					erb :decision
				when "Play Lottery"
					@title = "Choose to play lottery"
					@option_b = "Win or Lose"
						when "Win"
							@ending= "Go to Gulag and die"
							erb :ending 
						when "Lose" 
							@ending = "You recieved $1,000 because we feel sorry that you lost"
							erb :ending 
		when "Space"
			@title = "Welcome to Space"
			@story = "Would you like to travel to the sun or the moon?"
			@option_a = "Sun"
			@option_b = "Moon"
			erb :index
				when "Sun"
					@ending = "You have become Superman"
					erb :ending
				when "Moon"
					@ending = "You have discovered an alien and won $1,000,000 dollars"
					erb :ending 
	end

end


