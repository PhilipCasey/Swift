

//
//  Camera.swift to be ran in Apple Playgrounds
//
//  Created by Philip Casey on 7/9/24.
//

// Struct Practice
// Creating a camera struct and take some pictures

struct Camera {
    var brand: String
    var format: String
    var lens: String
    var photosRemaining: Int = 999
    
    init (brand: String, format: String, lens: String) {
        self.brand = brand
        self.format = format
        self.lens = lens
        
        // if the format is film, set to 12 shots remaining
        if format == "Film" {
            self.photosRemaining = 12
        }
    }
    
    mutating func takePicture() -> String {
        if self.photosRemaining > 1 {
            self.photosRemaining -= 1
            return ("Click, \(self.photosRemaining) Photos Remaining")
        } else {
            return ("Out of Photos")
        }
    }
    
}

// Create Rolleiflex Camera
var rolleiflex = Camera(brand: "Rolleiflex", format: "Film", lens: "80mm 2.8F")
print(rolleiflex)
// Take Picture with Rolleiflex
var rolleiflexTakePicture = rolleiflex.takePicture()

for _ in 1...12 {
    print(rolleiflexTakePicture)
    rolleiflexTakePicture = rolleiflex.takePicture()
}


// Create Sony Camera
var sonyA1 = Camera(brand: "Sony", format: "Digital", lens: "24-70mm 2.8" )
print(sonyA1)
// Take Picture with Sony
var sonyA1TakePicture = sonyA1.takePicture()
for _  in 1...12 {
    print(sonyA1TakePicture)
    sonyA1TakePicture = sonyA1.takePicture()
}
