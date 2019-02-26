# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
test_matter_1 = Matter.create!(title: "怎么让租房合同更加正规？", introduce: %{如果你也和我一样租房过日子，这里是我们展示租房
  奇遇记的地方。这里更是我们讨论租房环境，让租房政策不断完善的地方。})
test_matter_2 = Matter.create!(title: "反伪科研群体", introduce: %{也许你会说：“他做他的伪科研，关我什么事？”
  你不知道的是，伪科研往往具有很强的魅力，不但能误导群众，还有很强的吸金能力。他们往往成为地方政府的心头好，享受着各种优惠和补贴，
  还能轻松拿下政府和国企的大单。而这些本身就是对那些做真科研人员巨大打击。})
test_matter_3 = Matter.create!(title: "知识产权保卫战", introduce: %{1970 年的 4 月 26 日，《产权组织公约》
  生效。互联网的知识产权侵权行为隐蔽性强、辐射面广、举证难度大，也不断给知识产权维权带来新的挑战。什么是知识产权？有哪些关于知
  识产权的知识是必须知道的？遭受侵权应该如何维权？值世界知识产权日，我们邀请到了几位知识产权法律领域的嘉宾，同大家一起聊聊知识
  产权保护相关的方方面面。})
puts "创建了 3 个话题"