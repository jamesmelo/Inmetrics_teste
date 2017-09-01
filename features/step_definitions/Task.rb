#encoding: utf-8

require_relative '../pages/pages.rb'

Tasks = Tasks_Page.new


Dado(/^que estou na página$/) do
  visit 'https://demo.suiteondemand.com'
  Capybara.page.current_window.maximize

end

Dado(/^preencho o Usuario com "([^"]*)"$/) do |usuario|
  Tasks.usuario.set usuario
end

Dado(/^preencho a Senha com "([^"]*)"$/) do |senha|
  Tasks.senha.set senha
end

Quando(/^clico no botão Log In$/) do
  Tasks.btnLogin.click
end

Então(/^acesso o sistema para a prova$/) do
  puts page.has_content?("SUITECRM DASHBOARD")

end

Dado(/^que estou logado$/) do            
  #expect(page).to have_title("Help")
end                                                                          

Dado(/^clico em Create Task$/) do
    find("a", :text => "CREATE").click
    find("a", :text => "Create Task").click

end

Dado(/^preencho o Subject com "([^"]*)"$/) do |subject|
  Tasks.subject.set subject
end

Dado(/^preencho o Status com "([^"]*)"$/) do |status|
  Tasks.status.select status
end

Dado(/^preencho o Priority com "([^"]*)"$/) do |priority|
  Tasks.priority.select priority
end

Quando(/^clico no botão Save$/) do

page.all(:css, '.button primary').each do |item|
  if item.title == "Save"
    item.click
    break
  end
end
sleep 3
end

Então(/^Task "([^"]*)" é cadastrada com sucesso$/) do |subject|
 puts page.has_content?(subject)
end
                                                                             
Dado(/^clico no Menu e seleciono a Task "([^"]*)" para "([^"]*)"$/) do |task, acao|
  #find(:css,'navbar-toggle collapsed').click
 
    find("a", :text => "ACTIVITIES").click
    find("a", :text => "Tasks").click

    if acao == "editar"
      find('tr', text: task).click_link("Edit")
    else  
      find('tr', text: task).click_link("Select this row")
    end

end                                                                           
                                                                              
Dado(/^seleciono uma task$/) do                                               
  pending # Write code here that turns the phrase above into concrete actions 
end                                                                           
                                                                              
Dado(/^altero o Status para "([^"]*)"$/) do |setstatus|                            
  Tasks.status.select setstatus
            
  page.all(:css, '.button primary').each do |item|
    if item.title == "Save"
      item.click
      break
    end
  end 
end                                                                           
                                                                              
Então(/^Task é alterada com sucesso$/) do                                     
  pending # Write code here that turns the phrase above into concrete actions 
end                                                                           
                                                                              
Quando(/^clico no botão Remove$/) do                                          
  Tasks.btnremove.click
end                                                                           
                                                                              
Então(/^Task é removida com sucesso$/) do                                     
  pending # Write code here that turns the phrase above into concrete actions 
end                                                                           