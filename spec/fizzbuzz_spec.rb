require 'spec_helper'

RSpec.describe '#fizzbuzz' do
  context '15の倍数の場合' do
    it 'fizzbuzzを返す' do
      expect(fizzbuzz(45)).to eq 'fizzbuzz'
    end
  end
  context '5の倍数の場合' do
    it 'fizzを返す' do
      expect(fizzbuzz(10)).to eq 'buzz'
    end
  end
  context '3の倍数の場合' do
    it 'buzzを返す' do
      expect(fizzbuzz(6)).to eq 'fizz'
    end
  end
  context 'それ以外' do
    it 'そのまま返す' do
      expect(fizzbuzz(2)).to eq '2'
    end
  end

end
