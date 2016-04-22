require "sinatra"


get "/" do
	erb :index
end

get ‘/’ do
	@name
	@choice
	
	erb :index
end

