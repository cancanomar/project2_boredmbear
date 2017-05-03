class IdeasController < ApplicationController
# index
  def index
    @categories = Category.all

  end

  # show
  def show
    @categories = params.keys.reduce([]) do |acc, k|
      unless k == 'controller' || k == 'action' || k == "id"
        acc.push(Category.find(k))
      end
      acc
    end
    @category = @categories.sample
    @idea = @category.ideas.find(params[:id])
  end

  # new
  def new
    @idea = Idea.new
  end

  # create
  def create
    @idea = Idea.create(idea_params)
    redirect_to "/ideas"
  end

  # edit
  def edit
    @idea = Idea.find(params[:id])
  end

  # update
  def update
    @idea = Idea.find(params[:id])
    @idea.update(idea_params)
    redirect_to "/ideas/#{@idea.id}"
  end

  # destroy
  def destroy
    @idea = Idea.find(params[:id])
    @idea.destroy
    redirect_to "/idea"
  end

  private
  def idea_params
    params.require(:idea).permit(:description, :category)
  end
end
