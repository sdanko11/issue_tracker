require 'spec_helper'

describe Issue do
  # ... omitted to brevity

  describe '.severities' do
  it 'includes Low' do
    expect(Issue.severities).to include('Low')
  end

  it 'includes Moderate' do
    expect(Issue.severities).to include('Moderate')
  end

  it 'includes High' do
    expect(Issue.severities).to include('High')
  end

  it { should_not have_valid(:severity).when(nil) }


  it { should belong_to :category }

end

end