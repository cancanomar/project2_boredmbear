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
    @idea = @category.ideas.sample
    # Since we're randomly selecting an idea, there is no params[:id] to search on.
    # Instead, use .sample
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
    redirect_to "/ideas"
    # You can't redirect to a '/ideas/@idea.id' because the show action is currently
    # being used for randomly selecting an id. You would need to set up a separate
    # controller action (maybe 'random') to handle random selection to free up 'show'
    # for navigation to a specific idea.
  end

  # destroy
  def destroy
    @idea = Idea.find(params[:id])
    @idea.destroy
    redirect_to "/ideas"
  end

  private
  def idea_params
    params.require(:idea).permit(:description, :category_id)
    # You would want to permit in :category_id instead of :category
  end
end
