require 'test_helper'

class MainMailerTest < ActionMailer::TestCase
  test "notify_question_author" do
    question = Question.create email:'author@questions.com', body: ' a test question'
    answer = Answer.create email:'author@answer.com', body:'a test aswer'
    
    question.answers << answer
    
    mail = MainMailer.notify_question_author
    
    assert_equal "New Answer to your question from Test >> Mailers >> MainMailerTest.rb", mail.subject
    
    assert_equal [question.email], mail.to
    assert_equal [answer.email], mail.from
    
    assert_match answer.body, mail.body.encoded
  end

end
