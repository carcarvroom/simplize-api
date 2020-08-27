# user1 = User.create(name: "Michael", organization: "The Workspace", location: "Scranton", profile_img: "https://upload.wikimedia.org/wikipedia/en/d/dc/MichaelScott.png", description: "Regional Manager", username: "michael", password: "123")
# user2 = User.create(name: "Pam", organization: "The Workspace", location: "Scranton", profile_img: "https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcSC_ePKlNkYgJfeYdwfEu5aGQ_3eLYS2Qyx2g&usqp=CAU", description: "Receptionist", username: "pam", password: "123")
# user3 = User.create(name: "Jim", organization: "The Workspace", location: "Scranton", profile_img: "https://decider.com/wp-content/uploads/2017/11/jim-halpert.jpg?quality=80&strip=all&w=646&h=431&crop=1", description: "Co-manager", username: "jim", password: "123")
# user4 = User.create(name: "Rachel", organization: "Besties", location: "New York", profile_img: "https://akns-images.eonline.com/eol_images/Entire_Site/2014415/rs_600x600-140515042419-600-Jennifer-Aniston-Rachel-Friends-JR-51514.jpg?fit=around|1080:1080&output-quality=90&crop=1080:1080;center,top", description: "Fashion", username: "rachel", password: "123")
# user5 = User.create(name: "Monica", organization: "Besties", location: "New York", profile_img: "https://sites.google.com/site/friends2365/_/rsrc/1472782816715/home/monica-geller/monica.jpg", description: "Chef", username: "monica", password: "123")

# team1 =  Team.create(name: "Special Project", organization: "The Workspace", user_id: 1)
# team2 =  Team.create(name: "Clean apartment", organization: "Besties", user_id: 5)

# board1 = Board.create(name: "Problems", board_type: "issue", user_id: 5, team_id: 2)
# board2 = Board.create(name: "Brainstorm", board_type: "idea", user_id: 5, team_id: 2 )
# board3 = Board.create(name: "To do", board_type: "kanban", user_id: 5, team_id: 2)
# board4 = Board.create(name: "Timeline", board_type: "roadmap", user_id: 5, team_id: 2)
# board5 = Board.create(name: "Special Project", board_type: "kanban", user_id: 1, team_id: 1)

# task1 = Task.create(owner_id: 5, text: "Out of cleaner", importance: "low", resolved: false, board_id: 3, user_id: 5)
# task2 = Task.create(owner_id: 5, text: "Bathroom", importance: "low", resolved: false, board_id: 4, user_id: 5)
# task3 = Task.create(owner_id: 5, text: "Sort Clothes", importance: "low", resolved: false, board_id: 5, user_id: 5)
# task4 = Task.create(owner_id: 5, text: "1 day", importance: "low", resolved: false, board_id: 6, user_id: 5)
# task5 = Task.create(owner_id: 1, text: "Choose manager", importance: "high", resolved: false, board_id: 7, user_id: 1)


# comment1 = Comment.create(text: "comment1", user_id: 5, task_id: 1)
# comment2 = Comment.create(text: "comment2", user_id: 4, task_id: 2)
# comment3 = Comment.create(text: "comment3", user_id: 1, task_id: 5)
# comment4 = Comment.create(text: "comment4", user_id: 2, task_id: 5)

puts "Seeds completed!"