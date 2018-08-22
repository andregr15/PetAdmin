require 'test_helper'

class ServiceScheduleMailerTest < ActionMailer::TestCase
  test "schedule" do
    mail = ServiceScheduleMailer.schedule
    assert_equal "Schedule", mail.subject
    assert_equal ["to@example.org"], mail.to
    assert_equal ["from@example.com"], mail.from
    assert_match "Hi", mail.body.encoded
  end

end
