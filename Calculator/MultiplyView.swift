//
//  MultiplyView.swift
//  Calculator
//
//  Created by Dexter Ng on 2024-01-16.
//

import SwiftUI

struct MultiplyView: View {
    
    // MARK: Stored properties
    @State var firstNumber: Int = 1
    @State var secondNumber: Int = 1

    // MARK: Computed properties
    var sum: Int {
        return firstNumber * secondNumber
    }

    var body: some View {
        
        HStack {
            
            Spacer()
            
            VStack(alignment: .trailing) {
                
                Spacer()
                
                    Text("\(firstNumber)")
                        .font(.system(size: 50))
                
                Stepper(value: $firstNumber, label: {
                    Text("select first number")
                })

                HStack {
                    Image(systemName: "multiply")
                        .font(.system(size: 35))
                    
                    Spacer()
                    
                    Text("\(secondNumber)")
                        .font(.system(size: 50))
                }
                
                Stepper(value: $secondNumber, label: {
                    Text("select second number")
                })

                Divider()
                
                    Text("\(sum)")
                        .font(.system(size: 50))
                            
                Spacer()

            }
            .padding()
            
        }

    }
    
}

#Preview {
    MultiplyView()
}
