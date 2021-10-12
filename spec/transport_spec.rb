require 'spec_helper'

RSpec.describe 'transport module', focus: true do
  describe Gate do
    context '1区間' do
      let(:ticket) { Ticket.new(150) }
      let(:gate1) { Gate.new(:umeda) }
      let(:gate2) { Gate.new(:juso) }
      before(:each) {
        gate1.enter(ticket)
      }
      it '出場できる' do
        expect(gate2.exit(ticket)).to be true
      end
    end
    context '2区間 - 運賃不足' do
      let(:ticket) { Ticket.new(150) }
      let(:gate1) { Gate.new(:umeda) }
      let(:gate2) { Gate.new(:mikuni) }
      before(:each) {
        gate1.enter(ticket)
      }
      it '出場できない' do
        expect(gate2.exit(ticket)).to be false
      end
    end
    context '2区間 - 運賃ちょうど' do
      let(:ticket) { Ticket.new(190) }
      let(:gate1) { Gate.new(:umeda) }
      let(:gate2) { Gate.new(:mikuni) }
      before(:each) {
        gate1.enter(ticket)
      }
      it '出場できない' do
        expect(gate2.exit(ticket)).to be true
      end
    end
    context '2区間 - 運賃ちょうど' do
      let(:ticket) { Ticket.new(150) }
      let(:gate1) { Gate.new(:juso) }
      let(:gate2) { Gate.new(:mikuni) }
      before(:each) {
        gate1.enter(ticket)
      }
      it '出場できない' do
        expect(gate2.exit(ticket)).to be true
      end
    end
  end
  describe Ticket do

  end
end
