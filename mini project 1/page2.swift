//
//  page2.swift
//  mini project 1
//
//  Created by bibi on 03/01/2021.
//

import SwiftUI

struct page2: View {
    let renting : Renting
    @State var name = ""
    @State var phonenum = ""
    @State var houre = 0
    @State var q = 0
    @State var total :String = ""
    
    var body: some View {
        
        
        VStack() {
            
            Image(renting.bic)
                .resizable()
                .scaledToFit()
                .frame(width: 350, height: 300)
            
            TextField( "الاسم" , text: $name)
                .multilineTextAlignment(.leading)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            TextField( "رقم الهاتف " , text: $phonenum)
                .multilineTextAlignment(.leading)
                .textFieldStyle(RoundedBorderTextFieldStyle())
            
            Stepper("عدد الساعات :\(houre)", value: $houre ,in:0...7)
            Stepper("عدد الدراجات :\(q)", value:$q , in:0...7)
            Spacer()
            
            let total = String( houre * q * renting.price )
            
            Text("المبلغ الكلي")
            Text(total)
            
          //  func appearance () {
            if Int(total) ?? 0 >= 1 {
            
                    NavigationLink(
                        destination: page3(name: name, houre: houre, phonenum: phonenum, total: total),
                        label: {
                            Text("اضغط للمتابعة")
                                
                                .foregroundColor(.white)
                                
                                .padding(.vertical, 10)
                                .padding(.horizontal, 100)
                                
                                .background(Color.blue)
                                .cornerRadius(18)
                
                        })
                
                
            }
              
          //  }
    
            
            
            
            
        }
        .padding()
        .font(.system(size: 22))
        
    }
}

struct page2_Previews: PreviewProvider {
    static var previews: some View {
        page2(renting: Renting( price: 0, bic: "bic1"))
    }
}

