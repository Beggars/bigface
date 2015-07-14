require 'spec_helper'
require 'uuap'

describe Uuap do

  before do
    @uuap = Uuap.new('username','password')
  end

  context 'when initialized' do
    it 'should have init params' do
      expect(@uuap.username).to eq('username')
      expect(@uuap.password).to eq('password')
      expect(@uuap.lt).to match(/\w+/)
    end
  end
end
