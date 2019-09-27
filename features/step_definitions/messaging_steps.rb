Given("the following mail was sent") do |table|
    table.hashes.each do |mail|
      sender = User.find_by(name: mail["sender"])
      receiver = User.find_by(name: mail["receiver"])
      sender.send_message(receiver, mail["body"], mail["subject"])
    end
end