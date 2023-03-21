Rails.application.routes.draw do

  get("directors/eldest", { :controller => "directors", :action => "wisest" })

  get("directors/youngest", { :controller => "directors", :action => "youngest" })
  
  get("/movies", {:controller => "movies", :action => "index"})

  get("/directors/:an_id", {:controller => "directors", :action => "director_details" })

  get("/directors", {:controller => "directors", :action => "index" })

  get("/", { :controller => "application", :action => "homepage" })

  get("/movies/:movie_id", { :controller => "movies", :action => "show"})

  get("/actors", {:controller => "actors", :action => "index" })

  get("/actors/:an_id", {:controller => "actors", :action => "show"})

  

  



  


  
end
