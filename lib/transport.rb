class Gate
  STATIONS = {
    umeda: 1,
    juso: 2,
    mikuni: 3
  }
  attr_accessor :station
  def initialize(station)
    @station = station
  end

  def enter(ticket)
    ticket.stamp(@station)
  end

  def exit(ticket)
    ticket.fare >= required_fee(ticket)
  end

  private

  def required_fee(ticket)
    section = STATIONS[@station] - STATIONS[ticket.stamped_at]
    if section == 1
      150
    else
      190
    end
  end
end

class Ticket
  attr_accessor :fare
  def initialize(fare)
    @fare = fare
  end

  def stamp(station)
    @enter = station
  end

  def stamped_at
    @enter
  end
end
