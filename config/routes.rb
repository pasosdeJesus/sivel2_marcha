Rails.application.routes.draw do

  scope 'marcha/sivel2' do
    devise_scope :usuario do
      get 'sign_out' => 'devise/sessions#destroy'
    end
    devise_for :usuarios, :skip => [:registrations], module: :devise
      as :usuario do
            get 'usuarios/edit' => 'devise/registrations#edit', 
              :as => 'editar_registro_usuario'    
            put 'usuarios/:id' => 'devise/registrations#update', 
              :as => 'registro_usuario'            
    end
    resources :usuarios, path_names: { new: 'nuevo', edit: 'edita' } 
  
    root 'sivel2_gen/hogar#index'
  end
  mount Sip::Engine, at: '/marcha/sivel2', as: 'sip'
  mount Sivel2Gen::Engine, at: '/marcha/sivel2', as: 'sivel2_gen'

end
