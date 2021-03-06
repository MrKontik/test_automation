# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)




Theme.delete_all
Theme.reset_pk_sequence
Theme.create([

               {name: "-----"},      # 1 Нет темы
               {name: "Какие котики самые лучшие?"},      # 2
               {name: "Какое небо выглядит странее?"},      # 3
               {name: "Какая недвижимость лучше?"},      # 4
             ])


User.delete_all
User.reset_pk_sequence
User.create([

              {name: "Drim", email: "Drim@railstutorial.org"},
              {name: "Trem", email: "Trem@railstutorial.org"},
              {name: "Norman", email: "Norman@railstutorial.org"},
              {name: "Wromon", email: "Wromon@railstutorial.org"},
            ])

Image.delete_all
Image.reset_pk_sequence
Image.create([

               {name: 'Mem c котиком', file: 'k1.jpg', ave_value:1, theme_id: 2},
               {name: 'Небеса под землей', file: '1.jpg', ave_value:2, theme_id: 3},
               {name: 'Летающий котик', file: 'k2.jpg', ave_value:6, theme_id: 2},
               {name: 'Кот в балете', file: 'k3.jpg', ave_value:3, theme_id: 2},
               {name: 'Небо фиолетовое', file: '2.jpg', ave_value:4, theme_id: 3},
               {name: 'Дача в Селене', file: 'h1.jpg', ave_value:5, theme_id: 4},
               {name: 'Квартира в Москве', file: 'h2.jpg', ave_value:7, theme_id: 4},
               {name: 'Небеса в каждом из нас', file: 'heavenInside.jpg', ave_value:8, theme_id: 3},
               {name: 'Кот с котятами', file: 'CatWithCats.jpg', ave_value:9, theme_id: 2},
               {name: 'Кот в сапогах', file: 'CatBoots.jpg', ave_value:11, theme_id: 2},
             ])
Value.delete_all
Value.reset_pk_sequence
Value.create([
               {user_id: 1, image_id:1},
             ])