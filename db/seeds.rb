User.create!([
               {
                 email: 'admin@example.com',
                 password_digest: '$2a$10$HjQH2VBdguACJLyZHoVSs.yBZbwypqY3vUJGnxlWj94rmilWIuWzK',
                 deleted_at: nil,
               },
               {
                 email: 'member@example.com',
                 password_digest: '$2a$10$HjQH2VBdguACJLyZHoVSs.yBZbwypqY3vUJGnxlWj94rmilWIuWzK',
                 deleted_at: nil,
               },
             ])
