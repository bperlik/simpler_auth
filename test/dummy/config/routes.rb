Rails.application.routes.draw do
  mount SimplerAuth::Engine => "/simpler_auth"
end
