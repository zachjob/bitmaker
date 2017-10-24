class ReservationsController < ApplicationController

  def new
    @reservation = Reservation.new
    @restaurant = Restaurant.find(params[:restaurant_id])
  end

  def create
    @reservation = Reservation.new
    @restaurant = Restaurant.find(params[:restaurant_id])

    @reservation.user = current_user
    @reservation.restaurant = @restaurant
    @reservation.date = params[:reservation][:date]
    @reservation.time = params[:reservation][:time]
    @reservation.party_size = params[:reservation][:party_size]

    # Update loyalty_points
    current_user.loyalty_points += 10
    current_user.save

    if @reservation.save
      redirect_to root_url
      flash[:notice] = "Your seat has been reserved."
    else
      render :new
    end
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
    current_user.loyalty_points -= 10
    current_user.save
  end
end
