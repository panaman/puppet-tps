require 'spec_helper'
describe 'tps' do

  context 'with defaults for all parameters' do
    it { should contain_class('tps') }
  end
end
