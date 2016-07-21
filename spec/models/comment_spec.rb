require 'rails_helper'

RSpec.describe Comment, type: :model do

  it { should belong_to(:book)  }
  it { should belong_to(:user)  }
  it { should validate_inclusion_of(:rate).in_range(0..5)}
  it { should validate_length_of(:message).is_at_least(5) }

end
