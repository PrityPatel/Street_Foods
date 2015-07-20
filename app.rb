class StreetFoodApp < Sinatra::Base

  # root route
  get "/" do
    redirect "/sfoods"
  end

  # index
  get "/sfoods" do
    @sfoods = Sfood.all
    erb: :"sfoods/new"
  end

  # new
  post "/sfoods/new" do
    @sfood = Sfood.new
    erb :"sfoods/new"
  end

# create
  post "/sfoods" do
    @sfood = Sfood.new params[:sfood]
    if @sfood.save
      redirect "/sfoods/#{sfood.id}"
    else
      erb :"sfoods/new"
    end
  end

# show
  get "/sfoods/:id" do
   @sfood = Sfood.find params[:id]
    erb :"sfoods/edit"
  end

# edit
  get "/sfoods/:id/edit" do
    @sfood = Sfoods.find params[:id]
    erb :"sfoods/edit"
  end

# update
  put "/sfoods/:id" do
    puts params
    @sfood = Sfood.find params[:id]
    if @sfood.update_attributes params[:sfood]
      redirect "/sfoods"
    else
      erb :"sfoods/new"
    end
  end

# destroy
  delete "/sfoods/:id" do
    @sfood = Sfood.find params[:id]
    if @sfood.destroy
      redirect "/sfoods"
    else
      redirect "/sfoods/#{@sfood.id}"
    end
  end

end
