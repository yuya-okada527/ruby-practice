require 'spec_helper'

RSpec.describe '#fizzbuzz' do
  [
    {context: '15の倍数の場合', it: 'fizzbuzzを返す', num: 45, expected: 'fizzbuzz'},
    {context: '5の倍数の場合', it: 'buzzを返す', num: 10, expected: 'buzz'},
    {context: '3の倍数の場合', it: 'fizzを返す', num: 6, expected: 'fizz'},
    {context: 'その他の場合', it: 'そのまま返す', num: 2, expected: '2'},
  ].each do |test|
    context test[:context] do
      it test[:it] do
        expect(fizzbuzz(test[:num])).to eq test[:expected]
      end
    end
  end
end
