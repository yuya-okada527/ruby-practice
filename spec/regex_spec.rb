require 'spec_helper'

RSpec.describe '#convert_hash_syntax' do
  it '適切に変換されていること' do
    old_syntax = <<-TEXT
    {
      :name => 'Alice',
      :age=>20,
      :gender => :female
    }
    TEXT
    expected = <<-TEXT
    {
      :name: 'Alice',
      :age: 20,
      :gender: :female
    }
    TEXT
    expect(convert_hash_syntax(old_syntax)).to eq expected
  end
end
