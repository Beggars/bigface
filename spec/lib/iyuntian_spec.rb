require 'rspec'
require 'iyuntian'

describe 'My behaviour' do

  before do
    @@iyuntian = Iyuntian.new
  end

  it 'should do a instance of Iyuntian' do
    expect(@@iyuntian).to be_instance_of Iyuntian
  end

  it 'should do login ok' do
  end

end