class CarController < ApplicationController

  def index
    @cars = Car.all
    @car = Car.new
  end

  def add
    car = Car.create(params[:car])
    @message = ''

    if car.valid?
      car.save!
      @message = "The car was saved"
    else
      @message = "There was an error #{car.errors.to_a}"
    end
  end

  def delete
    car_id = params[:id]
    Car.delete(car_id)
    redirect_to(request.referer)
  end

end
