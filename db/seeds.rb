# Put your seed data in here. This should be a series of .create! statements for
# each of your relevant models.
#
# You'll run it with rake db:seed
#
# For example:
#
# Insect.create!(name: "Fuzzy Mantis", description: "Really Fierce")

Wolf.create(name: "Frank",
            image: "https://lh4.ggpht.com/FLJJCQyyW7qtlrfWAlwtt3ndXzXUNtup6LSC49bjwfhEn8aTiHJOblXor1GeQLGH6A=w300",
            description: "I have an insatiable appetite for sweet tarts."
)
Wolf.create(name: "Lou",
            image: "http://endlessfacts.com/upload/img/Z8VZD14416962592.jpg",
            description: "I have exquisite taste for fine wines and raw rabbits."
)
Wolf.create(name: "Jess",
            image: "https://s-media-cache-ak0.pinimg.com/736x/c8/62/9d/c8629da6f824ba90636dfb909bce20f8.jpg",
            description: "I enjoy long walks in the tundra."
)
Wolf.create(name: "Herb",
            image: "http://www.thinkgeek.com/images/products/frontsquare/hrrp_wolf_mask.jpg",
            description: "I am a wolf...I live life dangerously"
)

Howl.create(content: "Hey guys, new to the pack.  Whats up?", wolf_id: 1)
Howl.create(content: "Selfie! Check out these teeth.",
            image: "http://img2-ak.lst.fm/i/u/300x300/3a8fa86166ed421ba6fc9cb0ad213584.jpg",
            wolf_id: 3)
Howl.create(content: "Aaaroooooh", wolf_id: 4)
