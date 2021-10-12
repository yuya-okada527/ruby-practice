require 'spec_helper'

RSpec.describe 'rdb module' do
  describe 'to_hex' do
    [
      {args: [0, 0, 0], expected: '#000000'},
      {args: [255, 255, 255], expected: '#ffffff'},
      {args: [4, 60, 120], expected: '#043c78'},
    ].each do |test|
      it "args=#{test[:args]}" do
        expect(to_hex(*test[:args])).to eq test[:expected]
      end
    end
  end
  describe 'to_ints' do
    [
      {args: '#000000', expected: [0, 0, 0]},
      {args: '#ffffff', expected: [255, 255, 255]},
      {args: '#043c78', expected: [4, 60, 120]},
    ].each do |test|
      it "args=#{test[:args]}" do
        expect(to_ints(test[:args])).to eq test[:expected]
      end
    end
  end
end
