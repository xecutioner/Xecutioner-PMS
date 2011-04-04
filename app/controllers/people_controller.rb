class PeopleController < ApplicationController
  def new
    @person = Person.new
  end

  def update
    @person = Person.find(params[:id])
  end

  def edit
  end

  def destroy
  end

  def show
  end
  def index
  @people = Person.all
  end

end

