source 'https://rubygems.org'

#ruby ">= 2.2"

# Rails (internacionalización)
gem "rails", '~> 4.2.1'
gem "rails-i18n"

# Postgresql
gem "pg"

# CSS
gem "sass"

# Color en terminal
gem "colorize"

# Maneja variables de ambiente (como claves y secretos) en .env
#gem "foreman"

# API JSON facil. Ver: https://github.com/rails/jbuilder
gem "jbuilder"

# Uglifier comprime recursos Javascript
gem "uglifier", '>= 1.3.0'

# CoffeeScript para recuersos .js.coffee y vistas
gem "coffee-rails", '~> 4.1.0'

# jquery como librería JavaScript
gem "jquery-rails"
# Problema al actualiza a 4.0.0, al lanzar servidor reporta que jquery no existe

gem "jquery-ui-rails"
gem "jquery-ui-bootstrap-rails", git: "https://github.com/kristianmandrup/jquery-ui-bootstrap-rails"

# Seguir enlaces más rápido. Ver: https://github.com/rails/turbolinks
gem "turbolinks"

# Ambiente de CSS
gem "twitter-bootstrap-rails"
gem "bootstrap-datepicker-rails"

# Formularios simples 
gem "simple_form"

# Formularios anidados (algunos con ajax)
gem "cocoon", github: "vtamara/cocoon"

# Autenticación y roles
gem "devise"
gem "devise-i18n"
gem "cancancan"
gem "bcrypt"

# Listados en páginas
gem "will_paginate"

# ICU con CLDR
gem 'twitter_cldr'

# Maneja adjuntos
gem "paperclip", "~> 4.1"

# Zonas horarias
gem "tzinfo"
gem "tzinfo-data"

# Motor de sip
gem 'sip', github: 'pasosdeJesus/sip'
#gem 'sip', path: '../sip'

# Motor de SIVeL 2
gem 'sivel2_gen', github: 'pasosdeJesus/sivel2_gen'
#gem 'sivel2_gen', path: '../sivel2_gen'

group :doc do
    # Genera documentación en doc/api con bundle exec rake doc:rails
    gem "sdoc", require: false
end

# Los siguientes son para desarrollo o para pruebas con generadores
group :development do
  # Depurar
  #gem 'byebug'

  # Consola irb en páginas con excepciones o usando <%= console %> en vistas
  gem 'web-console'
end

# Los siguientes son para pruebas y no tiene generadores requeridos en desarrollo
group :test do
  # Acelera ejecutando en fondo.  https://github.com/jonleighton/spring
  gem "spring"

  # Pruebas con rspec
  gem 'spring-commands-rspec'
  gem 'rspec-rails'

  # Maneja datos de prueba
  gem "factory_girl_rails", "~> 4.0", group: [:development, :test]

  # https://www.relishapp.com/womply/rails-style-guide/docs/developing-rails-applications/bundler
  # Lanza programas para examinar resultados
  gem "launchy"

  # Para examinar errores, usar "rescue rspec" en lugar de "rspec"
  gem 'pry-rescue'
  gem 'pry-stack_explorer'

  # Pruebas de regresión que no requieren javascript
  gem "capybara"
  
  # Pruebas de regresión que requieren javascript
  gem "capybara-webkit" #, '1.4.1' # aun 1.5 no compila con qt4

  # Envia resultados de pruebas desde travis a codeclimate
  gem "codeclimate-test-reporter", require: nil
end


group :production do
  # Para despliegue
  gem "unicorn"

  # Requerido por heroku para usar stdout como bitacora
  gem "rails_12factor"
end


