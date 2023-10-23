//
//  PersonCardView.swift
//  CardView
//
//  Created by Marcelo Amaral Alves on 2023-10-22.
//

import SwiftUI

struct PersonCardView: View {
    let person: Person
    
    var body: some View {
        VStack {
            
            ZStack {
                Image(person.headerImage)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(height: 80)
                    .clipped()
                
                Image(person.profileImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 80)
                    .clipShape(Circle())
                    .offset(y: 40)
                    .padding(.horizontal)
            }
            .overlay(alignment: .topTrailing) {
                Button(action: {
                    // Ação do botão
                }) {
                    Image(systemName: "xmark.circle.fill")
                        .foregroundColor(.white)
                        .padding(6)
                }
                
            }
            VStack(spacing: 0.0) {
                Button(action: {
                    // Ação do botão
                }) {
                    Text("Follow")
                        .padding(.vertical, 4)
                        .padding(.horizontal)
                        .overlay {
                            Capsule()
                                .stroke(lineWidth: 2)
//                            .background(Capsule().stroke(Color.yellow, lineWidth: 2))
                        }
                }
                .frame(maxWidth: .infinity, alignment: .trailing)
                .padding()
                
                HStack {
                    Text(person.userName)
                        .fontWeight(.bold)
                        .foregroundColor(.black)
                    
                    Text(".\(person.followerCount)")
                        .foregroundColor(.gray)
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading)
                
                Text(person.jobTitle)
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .padding([.leading, .bottom])
            }
//            .padding(.horizontal)
        }
    }
}


struct PersonCardView_Previews: PreviewProvider {
    static var previews: some View {
        PersonCardView(person: person1)
            .previewLayout(.sizeThatFits)
    }
}
