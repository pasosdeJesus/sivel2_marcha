source 'https://rubygems.org'

#ruby ">= 2.2"

# Rails (internacionalización)
gem "rails", '~> 5.0.0'
gem "rails-i18n"

# Postgresql
gem "pg"

# Mientras solucionan https://github.com/sparklemotion/nokogiri/issues/1569
gem 'nokogiri', '1.6.8.1' 

gem 'puma'

# CSS
gem "sass"

gem 'font-awesome-rails'

gem 'chosen' 

# Color en terminal
gem "colorize"

# Maneja variables de ambiente (como claves y secretos) en .env
#gem "foreman"

# API JSON facil. Ver: https://github.com/rails/jbuilder
gem "jbuilder"

# Uglifier comprime recursos Javascript
gem "uglifier"

# CoffeeScript para recuersos .js.coffee y vistas
gem "coffee-rails"

# jquery como librería JavaScript
gem "jquery-rails"
# Problema al actualiza a 4.0.0, al lanzar servidor reporta que jquery no existe

gem "jquery-ui-rails"

# Seguir enlaces más rápido. Ver: https://github.com/rails/turbolinks
gem "turbolinks", '2.5.3'

# Ambiente de CSS
gem "twitter-bootstrap-rails"
gem "bootstrap-datepicker-rails"

# Formularios simples 
gem "simple_form"

# Formularios anidados (algunos con ajax)
gem "cocoon", git: "https://github.com/vtamara/cocoon.git"

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
gem "paperclip"

# Zonas horarias
gem "tzinfo"
gem "tzinfo-data"

# Motor de sip
gem 'sip', git: 'https://github.com/pasosdeJesus/sip.git'
#gem 'sip', path: '../sip'

# Motor de heb412
gem 'heb412_gen', git: 'https://github.com/pasosdeJesus/heb412_gen.git'
#gem 'heb412_gen', path: '../heb412_gen'

# Motor de SIVeL 2
gem 'sivel2_gen', git: 'https://github.com/pasosdeJesus/sivel2_gen.git'
#gem 'sivel2_gen', path: '../sivel2_gen'

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

  # Maneja datos de prueba
  gem "factory_girl_rails", group: [:development, :test]

  gem 'rails-controller-testing'

  # https://www.relishapp.com/womply/rails-style-guide/docs/developing-rails-applications/bundler
  # Lanza programas para examinar resultados
  gem "launchy"

  gem 'pry-rescue'
  gem 'pry-stack_explorer'

  # Pruebas de regresión que no requieren javascript
  gem "capybara"

  gem "connection_pool"
  gem "minitest-reporters" 
  gem "poltergeist" 
  gem 'minitest-rails-capybara'
  # Envia resultados de pruebas desde travis a codeclimate
  #gem "codeclimate-test-reporter", require: nil
end


group :production do
  # Para despliegue
  gem "unicorn"

  # Requerido por heroku para usar stdout como bitacora
  gem "rails_12factor"
end


