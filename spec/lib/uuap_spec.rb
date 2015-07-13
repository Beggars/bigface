require 'spec_helper'
require 'uuap'

describe Uuap do

  before do
    @uuap = Uuap.new('huangyong06','^thcpy4you$')
  end

  context 'when initialized' do
    it 'should have init username' do
      expect(@uuap.username).to eq('huangyong06')
    end

    it 'should have init password' do
      expect(@uuap.password).to eq('^thcpy4you$')
    end

    it 'should have a class var login_url' do
      expect(@uuap.login_url).to match(/^https:\/\//)
    end

    it 'should'

  end
end