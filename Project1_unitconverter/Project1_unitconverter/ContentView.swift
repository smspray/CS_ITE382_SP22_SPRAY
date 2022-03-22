import SwiftUI
import Foundation

struct ContentView: View {
    @State private var userInput = ""
    @State private var inputUnit = 0
    @State private var outputUnit = 0
    
    let inputUnits = ["Celsius", "Fahrenheit", "Foot", "Meter", "Gallon", "Liter"]
    let outputUnits = ["Celsius", "Fahrenheit", "Foot", "Meter", "Gallon", "Liter"]
    
    
    var convertedUnits: Double {
           guard let unit2Conver = Double(userInput) else { return 0 }
           let convertC2F = Double(unit2Conver/5*9+32)
           let convertF2C = Double((unit2Conver-32)*5/9)
        
        let convertGallons2Liters = Double(unit2Conver) * 3.785412
        let convertLiters2Gallons = Double(unit2Conver) * 0.264172
        
        let convertFoot2M = Double(unit2Conver) * 0.3048
        let convertM2Foot = Double(unit2Conver) * 3.28084

           if inputUnit == 0 && outputUnit == 1 {
              return Double(convertC2F)
           } else if inputUnit == 1 && outputUnit == 0 {
               return Double(convertF2C)
           } else if inputUnit == 3 && outputUnit == 2 {
               return Double(convertM2Foot)
           } else if inputUnit == 2 && outputUnit == 3 {
               return Double(convertFoot2M)
           } else if inputUnit == 4 && outputUnit == 5 {
               return Double(convertGallons2Liters)
           } else if inputUnit == 5 && outputUnit == 4 {
               return Double(convertLiters2Gallons)
           }

           return 0
       }

    var body: some View {
        NavigationView {
                Form {
                    var displayOutput = Double(convertedUnits)
                    Section(header: Text("After conversion is:")) {
                        Text("\(convertedUnits)")
                    }
                    
                    Section(header: Text("Select input unit:" )) {
                        Picker("Input Unit", selection: $inputUnit) {
                            ForEach(0..<inputUnits.count) {
                                Text("\(self.inputUnits[$0])")
                            }
                        }
                        .pickerStyle(SegmentedPickerStyle())
                    }

                    Section(header: Text("Select output unit:" )) {
                                    Picker("Output Unit", selection: $outputUnit){
                                            ForEach(0..<outputUnits.count) {
                                                Text("\(self.outputUnits[$0])")
                                            }
                                        }
                                            .pickerStyle(SegmentedPickerStyle())
                                    }
                    Section {
                        TextField("Input Unit to convert", text: $userInput)
                            .keyboardType(.numberPad)
                    }
                    
                    
                    
                                }
                            .navigationBarTitle("UnitConvert")
                            }
                        }
    
                    }

    

    


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        
        ContentView()
            .previewInterfaceOrientation(.portrait)
    }
}

