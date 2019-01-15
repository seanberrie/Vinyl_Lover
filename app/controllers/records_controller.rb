class RecordsController < ApplicationController
  before_action :set_record, only: [:show, :edit, :update, :destroy]
  before_action :set_user

  def index
    @records = Record.all
    set_user
  end

  def show
    set_user
    set_record
  end

  def new
    set_user
    @record = Record.new
  end
  
  def create
    set_user
    @record = @user.records.create(record_params)
        if @record.save
            redirect_to user_records_path
        else
            render :new
        end
  end

  def edit
    set_user
    set_record
  end

  def update
    set_user
    set_record

    if @record.update_attributes(record_params)
      redirect_to user_records_path
    else
      render :edit
    end
  end

  def destroy
    set_user
    set_record
    @record.destroy
    redirect_to user_records_path
  end

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
