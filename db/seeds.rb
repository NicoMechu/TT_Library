# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).

#Authors
Author.create(first_name: "Edgar Alan", last_name: "Poe" )

Author.create(first_name: "Horacio", last_name: "Quiroga" )

Author.create(first_name: "Miguel", last_name: "Cervantes" )

Author.create(first_name: "Stephens", last_name: "King" )

Author.create(first_name: "J. K.", last_name: "Rowling" )

Author.create(first_name: "Gabriel Garcia", last_name: "Marquez" )

#Books
Book.create(title: "Black cat", description: "Un gato negro que esta raro", year:  1975 , ISBN: "ASDJH1343M35" , author_id:Author.where(last_name: "Poe" ).first.id)

Book.create(title: "Tell tell heart", description: "Un tipo que se taró y mata a otro y despues se hace el gil, pero no le sale", year:  1979 , ISBN: "ASJLNAS5523SA ", author_id: Author.where(last_name: "Poe" ).first.id)

Book.create(title: "Muerto al llegar", description: "A un tipo lo pica una vibora y se va de viaje a buscar a un doc, no llega nunca", year:  1988 , ISBN: "ASNAMO1235234 ", author_id: Author.where(last_name: "Quiroga" ).first.id)

Book.create(title: "Harry Potter", description: "Un pibe agarra un bostoncito de madera y empieza a matar a todos con magia", year:  2006 , ISBN: "VNOIHQO123 ", author_id: Author.where(last_name: "Rowling" ).first.id)

Book.create(title: "Misery", description: "Un escritor se da contra un árbol con el auto y despierta en la casa de una loca que se cree enfermera", year:  1965 , ISBN: "ASJLHUO123SA ", author_id: Author.where(last_name: "King" ).first.id)

Book.create(title: "Dead zone", description: "Un tipo se parte la cabeza con el auto y de repente puede ver el futuro y que se yo", year:  1975 , ISBN: "ND14831413V ", author_id: Author.where(last_name: "King" ).first.id)

Book.create(title: "Don quijote de la mancha", description: "En un lugar de la mancha donde nadie se acuerda, a un loco se le va la moto y decide salir a darselas de caballero acompañado de un gordito.", year:  1750 , ISBN: "AS123J8SA4C ", author_id:Author.where(last_name: "Cervantes" ).first.id)

Book.create(title: "Cementerio de Animales", description: "Hay un cementerio muy loco donde cuando enterras a un fiambre de repente cobra vida de nuevo, pero se vuelve malo.", year:  2001 , ISBN: "BIU213GHIUS12 ", author_id: Author.where(last_name: "King" ).first.id)