class RecordsController < ApplicationController
  before_action :set_record, only: [:show, :edit, :update, :destroy]
  before_action :set_user

  def index
    wrapper = Discogs::Wrapper.new("vinyl_lover")
    @artist = wrapper.get_artist("329937")
    @records = Record.all
  end

  def show
  end

  def new
    if params[:record]
      my_user_token =  ENV["user_token"]
      auth_wrapper = Discogs::Wrapper.new("vinyl_lover", user_token: my_user_token)
      
      @search = auth_wrapper.search(params[:record], :per_page => 30)
      binding.pry
      @record = Record.new
    else
      @record = Record.new
    end
  end
  
  def create
    
    @record = @user.records.create(record_params)
        if @record.save
            redirect_to user_records_path
        else
            render :new
        end
  end

  def edit
  end

  def update
    if @record.update_attributes(record_params)
      redirect_to user_records_path
    else
      render :edit
    end
  end

  def destroy
    @record.destroy
    redirect_to user_records_path
  end

  # def authenticate
  #   app_key      = ENV["CONKEY"]
  #   app_secret   = ENV["CONSEC"]
  #   @discogs     = Discogs::Wrapper.new("vinyl_lover")
  #   request_data = @discogs.get_request_token(app_key, app_secret, "http://localhost:3000/users/9/records/new")
  
  #   session[:request_token] = request_data[:request_token]
  
  #   redirect_to request_data[:authorize_url]
  # end
  
  # # And an action that Discogs will redirect back to.
  # def callback
  #   @discogs      = Discogs::Wrapper.new("vinyl_lover")
  #   request_token = session[:request_token]
  #   verifier      = params[:oauth_verifier]
  #   binding.pry
  #   access_token  = @discogs.authenticate(request_token, verifier)
  
  #   session[:request_token] = nil
  #   session[:access_token]  = access_token
  
  #   @discogs.access_token = access_token
  
  #   # You can now perform authenticated requests.
  # end
  
  # # Once you have it, you can also pass your access_token into the constructor.
  # def another_action
  #   @discogs = Discogs::Wrapper.new("vinyl_lover", access_token: session[:access_token])
  
  #   # You can now perform authenticated requests.
  # end

  private
    def record_params
        params.require(:record).permit(:artist, :album, :year, :current_price, :image, :own)
    end
    def set_record
        @record = Record.find(params[:id])
    end
    def set_user
      @user = User.find(params[:user_id])
    end
end
