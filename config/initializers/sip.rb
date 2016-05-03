require 'sivel2_gen/version'

Sip.setup do |config|
      config.ruta_anexos = "/var/www/resbase/sivel2_marcha/anexos"
      config.ruta_volcados = "/var/www/resbase/sivel2_marcha/bd"
      # En heroku los anexos son super-temporales
      if ENV["HEROKU_POSTGRESQL_MAUVE_URL"]
        config.ruta_anexos = "#{Rails.root}/tmp/"
      end
      config.titulo = "SIVeL 2 Marcha Patriótica " + Sivel2Gen::VERSION
end
