STATIONS = {
  umeda: 1,
  juso: 2,
  mikuni: 3
}

class Gate
  attr_accessor :station
  def initialize(station)
    self.station = station
  end

  def enter(ticket)
    ticket.enter = self.station
  end

  def exit(ticket)
    ticket.fee >= required_fee(ticket)
  end

  private

  def required_fee(ticket)
    section = STATIONS[self.station] - STATIONS[ticket.enter]
    if section == 1
      150
    else
      190
    end
  end
end

class Ticket
  attr_accessor :fee, :enter
  def initialize(fee)
    self.fee = fee
  end
end
