require 'spec_helper'

RSpec.describe '#convert_length' do
  [
    {it: 'm->in', length: 1, from: :m, to: :in, expected: 39.37},
    {it: 'in->m', length: 15, from: :in, to: :m, expected: 0.38},
    {it: 'ft->m', length: 35000, from: :ft, to: :m, expected: 10670.73},
  ].each do |test|
    it test[:it] do
      expect(convert_length(test[:length], from: test[:from], to: test[:to])).to eq test[:expected]
    end
  end
end
