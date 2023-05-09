//
//  GetStartedView.swift
//  AirplaneTicketing
//
//  Created by Derefaa Cline on 5/8/23.
//

import SwiftUI

struct GetStartedView: View {
    @AppStorage("wasOpened") var wasOpened = false
    var body: some View {
        VStack {
            Image("planeImage")
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(height: 200)
                .clipped()
                .padding(.vertical)
            
            Text(NSLocalizedString("best_days", comment: ""))
                .fixedSize(horizontal: false, vertical: true)
                .padding()
                .foregroundColor(.black)
                .font(.custom("Montserrat-Bold", size: UIScreen.main.bounds.height > 600 ? 54: 34))
                .multilineTextAlignment(.center)
            Text("Booking and saving made easy")
                .foregroundColor(.black)
                .font(.custom("Montserrat-Regular", size:14))
                .padding()
            Button(action: {wasOpened = true}, label: {
                HStack {
                    Text("Get Started")
                        .foregroundColor(.white)
                        .font(.custom("Montserrat-Regular", size: 16))
                        Spacer()
                        Image(systemName: "chevron.right.2")
                        .foregroundColor(.white)
                        .font(.headline)
                }
                .modifier(Buttons())
            })
            .padding(.horizontal, 25)
            .padding(.top, 40)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color(hex: "F2F2F2").edgesIgnoringSafeArea(.all))
    }
}

struct GetStartedView_Previews: PreviewProvider {
    static var previews: some View {
        GetStartedView()
            .preferredColorScheme(.dark)
    }
}
