# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#
Quote.create([
  {
   author: "Frank Zappa",
   content: "I think it is good that books still exist, but they do make me sleepy.",
   language: "en"
  },
  {
   author: "Miguel de Cervantes",
   content: "El que lee mucho y anda mucho, ve mucho y sabe mucho",
   language: "es"
  },
  {
   author: "Friedrich Nietzsche",
   content: "Sin musica la vida seria un error",
   language: "es"
  },
  {
   author: "Jean-Paul Sartre",
   content: "El hombre nace libre, responsable y sin excusas.",
   language: "es"
  },
  {
   author: "Friedrich Nietzsche",
   content: "He who fights with monsters might take care lest he thereby become a monster",
   language: "en"
  },
  {
   author: "Siddhartha Gautama",
   content: "All wrong-doing arises because of mind. If mind is transformed can wrong-doing remain?",
   language: "en"
  },
  {
   author: "Ralph Waldo Emerson",
   content: "Every sweet has its sour; every evil its good.",
   language: "en"
  },
  {
   author: "Winston Churchill",
   content: "We make a living by what we get, we make a life by what we give",
   language: "en"
  },
  {
   author: "Siddhartha Gautama",
   content: "El dolor es inevitable pero el sufrimiento es opcional.",
   language: "es"
  },
  {
   author: "Walt Whitman",
   content: "Be curious, not judgmental",
   language: "en"
  }
])
