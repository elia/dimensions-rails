require 'spec_helper'

describe ApplicationHelper, :type => :helper do
  it 'adds size to images' do
    tag = helper.image_tag('rails.png')
    tag.should match('height="64"')
    tag.should match('width="50"')
  end
end
