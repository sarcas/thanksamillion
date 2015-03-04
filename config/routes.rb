Thanksamillion::Application.routes.draw do
  match '/' => 'snapshot#welcome'
  match '/:controller(/:action(/:id))'
end
