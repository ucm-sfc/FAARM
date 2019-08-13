import Foundation
 
let name = "-Summer Session A & D - Deadline to add/drop a course with instructor signature with NO REFUND"

let stringFinal = name.uppercased().filter("ABCDEFGHIJKLKMNOPQRSTUVWXYZ1234567890 ".contains).replacingOccurrences(of: " ", with: "_", options: .literal, range: nil)

print(stringFinal)