require 'test_helper'

class UserMailerTest < ActionMailer::TestCase
  test "reward" do
    mail = UserMailer.reward
    assert_equal "Reward", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
