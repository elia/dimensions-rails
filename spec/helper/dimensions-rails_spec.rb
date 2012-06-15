require 'spec_helper'

describe ApplicationHelper, :type => :helper do
  it 'adds size to images' do
    tag = helper.image_tag('rails.png')
    tag.should match('height="64"')
    tag.should match('width="50"')
  end
  
  it "should not return no image or error if the image is missing" do
    tag = helper.image_tag('missing.png')
    tag.should match('height="0"')
    tag.should match('width="0"')
  end
end
