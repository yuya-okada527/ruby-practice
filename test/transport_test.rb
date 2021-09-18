require 'minitest/autorun'

class TransportTest < Minitest::Test

  def test_exit
    umeda = Gate.new(:umeda)
    mikuni = Gate.new(:mikuni)
    ticket = Ticket.new(150)
    umeda.enter(ticket)
    assert !mikuni.exit(ticket)
  end

end