Thanksamillion::Application.routes.draw do
  get '/' => 'snapshot#welcome'
  match '/:controller(/:action(/:id))', via: :all
end
