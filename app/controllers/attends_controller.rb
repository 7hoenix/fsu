class AttendsController < ApplicationController
 before_filter :setup_attends

  def index
    @attends = Attend.all
  end

  def new
    @attend = Attend.new
    @attends = Attend.all
  end

  def create
    @attend = Attend.new(attend_params)
     @attend.save
    redirect_to lectures_path
  end

  def update
    respond_to do |format|
      if @attend.update(attend_params)
        format.html { redirect_to @attend, notice: 'Lecture was successfully updated.' }
      else
        format.html { render :edit }
      end
    end
  end

  #Record a new attendance
  def attending(user, schedule)
    unless Attend.exists?(user, schedule)
      Attend.create(:user_id => user, :schedule_id => schedule)
      Attend.save
    end
  end


  private
  def setup_attends
    @user = current_user.id
    @schedule = Schedule.find_by_id(:schedule_id)

  end

  def attend_params
    params.require(:attend).permit(:schedule_id, :user_id, :status)
  end


end
