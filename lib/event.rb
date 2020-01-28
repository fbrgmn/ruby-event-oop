class Event
  attr_accessor :start_date, :duration, :title, :attendees

  def initialize(start_date, duration, title, attendees)
    @start_date = Time.parse(start_date)
    @duration = duration
    @title = title
    @attendees = attendees
  end

  def postpone_24h
    @start_date += 60*60*24
  end

  def end_date
    return @start_date < Time.now
  end

  def is_past?
    return @start_date < Time.now
  end

  def is_future?
    !self.is_past?
  end

  def is_soon?
    return @start_date < Time.now + 60*30
  end

  def to_s
    puts ">Titre : #{@title}"
    puts ">Date de début : #{@start_date}"
    puts ">Durée : #{@duration} minutes"
    print ">Invités : "
    puts @attendees.join(", ")
  end

  def age_analysis
    age_array = [] #On initialise un array qui va contenir les âges de tous les participants à un évènement
    average = 0 #On initialise une variable pour calculer la moyenne d'âge à l'évènement

    @attendees.each do |attendee| #On parcourt tous les participants (objets de type User)
      age_array << attendee.age #leur âge est stocké dans l'array des âges
      average = average + attendee.age #leur âge est additionné pour préparer le calcul de la moyenne
    end

    average = average / @attendees.length #on divise la somme des âges pour avoir la moyenne

    print "Voici les âges des participants : "
    puts age_array.join(", ")
    puts "La moyenne d'âge est de #{average} ans"
  end

end

class WorkEvent < Event
  attr_accessor :location

  def initialize(start_date, duration, title, attendees, location)
    @location = location # j'ai rajouté cette ligne

    super(start_date, duration, title, attendees) #fait appel au initialize de la classe Event
  end

  def is_event_acceptable?

    if @attendees.length > 3 || @duration > 60
      puts "Cette réunion ne respecte pas nos bonnes pratiques !"
      return false
    else
      puts "Cette réunion est OK."
      return true
    end
  end
end
