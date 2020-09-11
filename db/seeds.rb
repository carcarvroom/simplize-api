# User.destroy_all
# Team.destroy_all
# Board.destroy_all
# List.destroy_all
# Task.destroy_all

# user = User.create(first_name: 'Leslie', last_name: 'Knope', username: 'leslie', password: '123', email: 'leslie@pawnee.com')
# user2 = User.create(first_name: 'Ron', last_name: 'Swanson', username: 'ron', password: '123', email: 'ron@pawnee.com')
# team = Team.create(name: "Task Force", organization: "Pawnee Dept of Parks and Recreation")

# member1 = Member.create(user: User.first, team: team)
# member1 = Member.create(user: User.second, team: team)

# board = Board.create(name: 'Pit', board_type: 'taskboard', team: team)
# board2 = Board.create(name: 'Pawnee Town Hall Issues', board_type: 'issueboard', team: Team.first)

# leslieIssueBoard = Board.create(name: 'Ann Perkins', board_type: 'issueboard', user: User.first)
# leslieTaskBoard = Board.create(name: 'Organize House', board_type: 'taskboard', user: User.first)


# list = List.create(name: "To do", board: board)

# task = Task.create(list: list, description: "Fill pit", resolved: false, priority: 'high', status: 'pending', owner_id: 1)

# comment = Comment.create(description: 'We got this team!', user: User.first, task: task)



puts "Seeds completed!"