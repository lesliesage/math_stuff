Mathlete.destroy_all
Theorem.destroy_all
Like.destroy_all
Follow.destroy_all


pythagoras = Mathlete.create(name: "Pythagoras", country: "Greece")
noether = Mathlete.create(name: "Emmy Noether", country: "Germany")
mirzakhani = Mathlete.create(name: "Maryam Mirzakhani", country: "Iran")
ashley = Mathlete.create(name: "Ashley Tolen", country: "US")
leslie = Mathlete.create(name: "Leslie Sage", country: "US")

p1 = Theorem.create(name: "Pythagorean Theorem", application: "triangles", mathlete_id: pythagoras.id)
n1 = Theorem.create(name: "Theory of Ideals", application: "physics", mathlete_id: noether.id)
n2 = Theorem.create(name: "Inverse Galois Problem", application: "symmetry", mathlete_id: noether.id)
n3 = Theorem.create(name: "Betti Homology Groups", application: "algebraic topology", mathlete_id: noether.id)
m1 = Theorem.create(name: "Teichmueller Theory", application: "geometry", mathlete_id: mirzakhani.id)
m1 = Theorem.create(name: "Ergodic Theory", application: "inconsistency", mathlete_id: mirzakhani.id)

Like.create(mathlete_id: leslie.id, theorem_id: p1.id)
Like.create(mathlete_id: leslie.id, theorem_id: n1.id)
Like.create(mathlete_id: ashley.id, theorem_id: n1.id)
Like.create(mathlete_id: ashley.id, theorem_id: m1.id)
Like.create(mathlete_id: noether.id, theorem_id: p1.id)
Like.create(mathlete_id: mirzakhani.id, theorem_id: m1.id)
Like.create(mathlete_id: mirzakhani.id, theorem_id: n2.id)

Follow.create(mathlete_id: noether.id, acolyte_id: leslie.id)
Follow.create(mathlete_id: mirzakhani.id, acolyte_id: leslie.id)
Follow.create(mathlete_id: noether.id, acolyte_id: ashley.id)
Follow.create(mathlete_id: mirzakhani.id, acolyte_id: ashley.id)
Follow.create(mathlete_id: pythagoras.id, acolyte_id: noether.id)
Follow.create(mathlete_id: pythagoras.id, acolyte_id: mirzakhani.id)
Follow.create(mathlete_id: noether.id, acolyte_id: mirzakhani.id)
