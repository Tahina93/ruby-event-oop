require_relative 'event'

class EventCreator

  def initialize
	puts "Salut, tu veux créer un événement ? Cool ! "
	puts "Commençons. Quel est le nom de l'événement ?"
	print "> "
	@title = gets.chomp
	puts " "

	puts "Super. Quand aura-t-il lieu ?"
	print "> "
	@start_date = gets.chomp
	puts " "

	puts "Au top. Combien de temps en minutes va-t-il durer (en minutes) ?"
	print "> "
	@duration = gets.chomp.to_i
	puts " "

	puts "Génial. Qui va participer ? Balance leurs e-mails"
	print "> "
	@attendees = gets.chomp
	puts " "

    event = Event.new(@start_date, @duration, @title, @attendees)
	puts "Super, c'est noté, ton évènement a été créé !"
	event.to_s
  end
end

EventCreator.new