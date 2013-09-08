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

  it 'works even if the image is not in the asset pipeline' do
    tag = helper.image_tag('/outsiders/rails.png')
    tag.should match('height="64"')
    tag.should match('width="50"')
  end

  it 'is disabled passing false to the :dimensions option' do
    tag = helper.image_tag('/outsiders/rails.png', :dimensions => false)
    tag.should_not match('height=')
    tag.should_not match('width=')
  end

  it 'should not add dimensions attribute to image' do
    tag = helper.image_tag('/outsiders/rails.png', :dimensions => false)
    tag.should_not match('dimensions="false"')
  end
end
