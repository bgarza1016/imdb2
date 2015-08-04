class ActorsController < ApplicationController
<<<<<<< HEAD
<<<<<<< HEAD
  def index
  end

  def edit
  end

  def new
  end

  def show
  end

=======
>>>>>>> ec66a1ec6b640ea7074c0d43500399fd0d31c00a
=======

def index
    @actors = Actor.all
end

def new
  @actor = Actor.new
end

def create
  @actor = Actor.new(actor_params)

  @actor.save
  redirect_to @actor
end

def show
  @actor = Actor.find(params[:id])
end

def edit
  @actor = Actor.find(params[:id])
end

def update
  @actor = Actor.find(params[:id])
  if @actor.update_attributes(actor_params)
    redirect_to @actor
  else
    render 'edit'
  end
end

def destroy
  @actor = Actor.find(params[:id]).destroy
  redirect_to root_path
end



private

def actor_params
  params.require(:actor).permit(
    :name,
    :year_of_birth,
    :thumbnail,
  )
end

>>>>>>> 5b0a7c9d36e114b7e6e178fa7b119153db1e3731
end
