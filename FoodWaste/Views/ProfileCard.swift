//
//  ProfileCard.swift
//  FoodWaste
//
//  Created by David Krystall on 11/23/20.
//

import SwiftUI

struct ProfileCard: View {
    var body: some View {
        ZStack{
            Color(UIColor(red: 0.75, green: 0.22, blue: 0.17, alpha: 1.00))
                .edgesIgnoringSafeArea(.all)
            VStack {
                Image("JackDRipper")
                    .resizable()
                    .frame(width: 200, height: 133.0)
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .overlay(
                        Circle().stroke(Color.white, lineWidth: 5)
                    )
                Text("Profile Name")
                    .font(Font.custom("NerkoOne-Regular", size: 40))
                    .foregroundColor(Color(red: 0.93, green: 0.94, blue: 0.95))
                    .bold()
                Text("Job Title")
                    .foregroundColor(.white)
                    .font(.system(size: 25))
                
                InfoView(text: "323 397 4217", imageName: "phone.fill")
                InfoView(text: "dkrystall@gmail.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ProfileCard_Previews: PreviewProvider {
    static var previews: some View {
        ProfileCard()
    }
}
