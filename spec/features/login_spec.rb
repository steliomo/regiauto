#encoding: UTF-8

require "spec_helper"

describe "the signin process", :js => true do
  before do 
    FactoryGirl.create(:user, :username => "smoiane", :password => "123456")    
  end
  it "signs me in" do
    visit '/auth/users/login'
    fill_in 'Usuário', :with => 'smoiane'
    fill_in 'Senha', :with => '123456'
    click_on 'Entrar'
    expect(page).to have_content 'bem vindo ao Registo Automovel'
  end
end