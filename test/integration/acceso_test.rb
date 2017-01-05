# encoding: UTF-8

require 'test_helper'

class AccesoTest < Capybara::Rails::TestCase
  include Capybara::DSL  

  test "control de acceso" do
    @usuario = Usuario.find_by(nusuario: 'sivel2')
    @usuario.password = 'sivel2'
    visit File.join(Rails.configuration.relative_url_root, '/usuarios/sign_in')
    fill_in "Usuario", with: @usuario.nusuario
    fill_in "Clave", with: @usuario.password
    click_button "Iniciar Sesión"
    assert page.has_content?("Administrar")

    visit File.join(Rails.configuration.relative_url_root, '/casos/nuevo')
    @numcaso=find_field('Código').value

    # Datos básicos
    fill_in "Fecha del Hecho", with: '2014-08-05'
    fill_in "Titulo", with: 'titulo'
    click_button "Guardar"
    assert page.has_content?("2014-08-05")

    # Solicitante Principal
    click_on "Editar"
    fill_in "Hora", with: '3:00 PM'
    fill_in "Duracion", with: '2'
    select("ANTIOQUIA CHOCO SANT", from: 'Región')
    select("Ecuador", from: 'Frontera')
    click_button "Guardar"
    assert page.has_content?("2014-08-05") 
    # puts page.body
  end

end

