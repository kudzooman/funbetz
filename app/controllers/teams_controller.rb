class TeamsController < ApplicationController
  def index
    @teams = Team.all
  end

  def new
    @team = Team.new
    authorize @team
  end

  def show
    @team = Team.find(params[:id])
  end

  def edit
    @team = Team.find(params[:id])
    authorize @team
  end

  def create
    @team = Team.new(team_params)
    authorize @team
    if @team.save
      flash[:notice] = "Team saved."
      redirect_to teams_path
    else
      flash[:error] = "Nope."
      render :new
    end
  end

  def update
    @team = Team.find(params[:id])
    authorize @team
    if @team.update_attributes(team_params)
      redirect_to teams_path
    else
      flash[:error] = "Nope."
      render :edit
    end
  end

  private

  def team_params
    params.require(:team).permit(:name, :score, :value, :public)
  end

end
