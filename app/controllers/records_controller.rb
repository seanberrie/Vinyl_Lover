class RecordsController < ApplicationController
  before_action :set_record, only: [:show, :edit, :update, :destroy]


  def index
    @records = Record.all
  end

  def show
    set_record
  end

  def new
    @record = Record.new
  end
  
  def create
    @user = User.find(params[:user_id])
    @record = @user.records.create(record_params)
        if @record.save
            redirect_to user_records_path
        else
            render :new
        end
  end

  def edit
    set_record
  end

  def update
    set_record

    if @record.update_attributes(record_params)
      redirect_to user_records_path
    else
      render :edit
    end
  end

  def destroy
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
end
