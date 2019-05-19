Rails.application.routes.draw do
  resources :horarios
  resources :aulas
  resources :many_alumnos_has_many_asignaturas
  resources :asignaturas
  resources :departamentos
  resources :alumnos
  resources :profesors
  resources :usuarios
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
