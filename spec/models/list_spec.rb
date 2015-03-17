require 'rails_helper'

describe List do

  it "doesn't save if current_user.nil?" do
    @current_user = nil

  end
end
