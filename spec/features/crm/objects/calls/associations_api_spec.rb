require 'spec_helper'

describe 'Hubspot::Crm::Objects::Calls::AssociationsApi' do
  subject(:api) { Hubspot::Crm::Objects::Calls::AssociationsApi.new }
  
  it { is_expected.to respond_to(:archive) }
  it { is_expected.to respond_to(:create) }
  it { is_expected.to respond_to(:get_all) }
end