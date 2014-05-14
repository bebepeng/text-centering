require 'rspec'
require 'text_centering'

describe TextCentering do
  it 'centers lines' do
    input = <<-INPUT
this is a short line
this is a really long line that has a lot of characters
and this is
short
    INPUT

    output = <<-OUTPUT
                 this is a short line
this is a really long line that has a lot of characters
                      and this is
                         short
    OUTPUT

    tc = TextCentering.new(input)
    expect(tc.center).to eq output
  end

  it 'centers uneven lines' do
    input = <<-INPUT
22
12345
    INPUT

    output = <<-OUTPUT
 22
12345
    OUTPUT

    tc = TextCentering.new(input)
    expect(tc.center).to eq output
  end

  it 'centers with existing whitespace' do
    input = <<-INPUT
  22
1234
    INPUT

    output = <<-OUTPUT
 22
1234
    OUTPUT

    tc = TextCentering.new(input)
    expect(tc.center).to eq output
  end
end