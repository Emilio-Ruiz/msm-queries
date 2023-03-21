class ActorsController < ApplicationController 
  def index 
    @actors=Actor.all
    render({:template => "actor_templates/index.html.erb"})
  end
  def show 
    the_id = params.fetch("an_id")
    @the_actor = Actor.where({:id => the_id}).at(0)
    render({:template => "actor_templates/show.html.erb"})
  end
end
