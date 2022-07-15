require 'watir'
browser = Watir::Browser.new:firefox
browser.goto 'google.com'

accept_button = browser.button(id: 'L2AGLb')

accept_button.click
research = ARGV.first

search_bar = browser.text_field(class: 'gsfi')
search_bar.set(research)

#méthode de la barre d'entrée
#search_bar.send_keys(:enter)

#méthode du clic
submit_button = browser.button(type:"submit")
submit_button.click

sleep 3600

