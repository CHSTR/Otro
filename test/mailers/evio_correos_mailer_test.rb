require 'test_helper'

class EvioCorreosMailerTest < ActionMailer::TestCase
  test "contestar" do
    mail = EvioCorreosMailer.contestar
    assert_equal "Contestar", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
