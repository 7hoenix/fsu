class AttendsController < ApplicationController
  def index
    @attends = Attend.all
  end

  def new
    @attend = Attend.new
  end

  def create
    @attend = Attend.new(attends_params)

    respond_to do |format|
      if @attend.save
        format.html { redirect_to @attend, notice: 'Register for class was successfully created.' }
    end
  end
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

  private

  def attend_params
    params.require(:attend).permit(:schedule_id, :user_id, :status)
  end

end
