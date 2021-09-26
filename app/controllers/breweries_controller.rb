class BreweriesController < ApplicationController
    before_action :find_brewery, except: [:get_california_breweries, :index, :new]
    before_action :types_array, only: [:edit, :new]
    before_action :states, only: [:edit, :new]
    def index
        @breweries = Brewery.all
    end
    
    def show
    end

    def new
        @brewery = Brewery.new   
    end

    def create
        brewery = Brewery.create(brewery_params)
        redirect_to brewery_path(brewery)
    end

    def destroy
        @brewery.destroy
        redirect_to breweries_path
    end

    def edit
    end

    def update
        @brewery.update 
        redirect_to brewery_path(@brewery)
    end

    def get_california_breweries
        @breweries = Brewery.all.select{|b| b.state == "California"}
        render 'breweries/california'
    end




    private 

    def find_brewery
        @brewery = Brewery.find(params[:id]) unless params[:id] == "california"
    end

    def brewery_params
        params.require(:brewery).permit(:name, :state, :brewery_type, :website_url, :img_url)
    end

    def types_array
        @types = Brewery.all.map do |b|
            b.brewery_type
         end.uniq
    end

    def states
        @states = ["Alaska",
     "Alabama",
     "Arkansas",
     "American Samoa",
     "Arizona",
     "California",
     "Colorado",
     "Connecticut",
     "District of Columbia",
     "Delaware",
     "Florida",
     "Georgia",
     "Guam",
     "Hawaii",
     "Iowa",
     "Idaho",
     "Illinois",
     "Indiana",
     "Kansas",
     "Kentucky",
     "Louisiana",
     "Massachusetts",
     "Maryland",
     "Maine",
     "Michigan",
     "Minnesota",
     "Missouri",
     "Mississippi",
     "Montana",
     "North Carolina",
     " North Dakota",
     "Nebraska",
     "New Hampshire",
     "New Jersey",
     "New Mexico",
     "Nevada",
     "New York",
     "Ohio",
     "Oklahoma",
     "Oregon",
     "Pennsylvania",
     "Puerto Rico",
     "Rhode Island",
     "South Carolina",
     "South Dakota",
     "Tennessee",
     "Texas",
     "Utah",
     "Virginia",
     "Virgin Islands",
     "Vermont",
     "Washington",
     "Wisconsin",
     "West Virginia",
     "Wyoming"]
    end


end