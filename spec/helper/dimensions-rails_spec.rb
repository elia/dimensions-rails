require 'spec_helper'

describe ApplicationHelper, :type => :helper do
  it 'adds size to images' do
    tag = helper.image_tag('rails.png')
    tag.should match('height="64"')
    tag.should match('width="50"')
  end
  
  it "works with a missing image" do
    tag = helper.image_tag('missing.png')
    tag.should_not match('height=')
    tag.should_not match('width=')
  end
end
