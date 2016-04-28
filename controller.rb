require "sinatra"

get "/" do

	@title = "Welcome to choose your own adventure"
	@story = "Choose where you would like to begin"
	@option_a = "Hawaii"
	@option_b = "Soviet Union"
	@option_c = "Space"
	erb :new
end

get "/direction/:choice" do

	choice = params[:choice]
	case choice
		when "Hawaii"
			@title = "Welcome to Hawaii"
			@story = "Would you like to hike or surf?"
			@option_a = "Hike"
			@option_b = "Surf"
			erb :new
				when "Hike"
					@title = "You have been biten by snake. Go to Space"
					@decision = "Go to Space"
					@destination = "Space"
					erb :new
				when "Surf"
					@ending = "You have been eaten by a shark"
					erb :new
		when "Soviet_Union"
			@title = "Welcome to the Soviet Union"
			@story = "Would you like to play the lottery or move to Hawaii?"
			@option_a = "Hawaii"
			@option_b = "Play Lottery"
			erb :new
				when "Hawaii"
					@decision = "Hawaii"
					erb :new
				when "Play Lottery"
					@title = "Choose to play lottery"
					@win_or_lose = "Win or Lose"
						when "Win"
							@ending= "Go to Gulag and die"
							erb :new 
						when "Lose" 
							@ending = "You recieved $1,000 because we feel sorry that you lost"
							erb :new 
		when "Space"
			@title = "Welcome to Space"
			@story = "Would you like to travel to the sun or the moon?"
			@option_a = "Sun"
			@option_b = "Moon"
			erb :new
				when "Sun"
					@ending = "You have become Superman"
					erb :new
				when "Moon"
					@ending = "You have discovered an alien and won $1,000,000 dollars"
					erb :new 
	end

end


