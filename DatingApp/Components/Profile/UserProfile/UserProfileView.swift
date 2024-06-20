//
//  UserProfileView.swift
//  DatingApp
//
//  Created by Helen on 18.06.2024.
//

import SwiftUI

struct UserProfileView: View {
    @Environment(\.dismiss) var dismiss
    @State private var currentImageIndex = 0
    
    let user: User
    
    var body: some View {
        VStack {
            HStack {
                Text(user.fullName)
                    .font(.title2)
                    .fontWeight(.semibold)
                
                Text("\(user.age)")
                    .font(.title2)
                
                Spacer()
                
                Button {
                    dismiss()
                } label: {
                    Image(systemName: "arrow.down.circle.fill")
                        .imageScale(.large)
                        .fontWeight(.bold)
                        .foregroundStyle(.purple)
                }
            }
            .padding(.horizontal)
            
            ScrollView {
                VStack {
                    ZStack(alignment: .top) {
                        Image(user.profileImagesUrl[currentImageIndex])
                            .resizable()
                            .scaledToFill()
                            .frame(width: SizeConstans.cardWidth, height: SizeConstans.cardHeight)
                            .overlay {
                                ImageScrollingOverlayView(currentImageIndex: $currentImageIndex, imageCount: user.profileImagesUrl.count)
                            }
                        CardImageIndicatorView(currentImageIndex: currentImageIndex, imageCount: user.profileImagesUrl.count)
                    }
                }
                
                VStack(alignment: .leading) {
                    Text("About me")
                        .fontWeight(.semibold)
                    
                    //                    if let bio = user.bio {
                    //                        Text(bio)
                    //                    }
                }
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding()
                .background(Color(.secondarySystemBackground))
                .font(.subheadline)
                .clipShape(RoundedRectangle(cornerRadius: 10))
                
                
                VStack(alignment: .leading, spacing: 12) {
                    Text("Essentials")
                        .fontWeight(.semibold)
                    
                    HStack {
                        Image(systemName: "person")
                        Text("Straight")
                        
                        Spacer()
                    }
                    .font(.subheadline)
                    
                    HStack {
                        Image(systemName: "arrow.up.forward.and.arrow.down.backward.circle")
                        Text("Women")
                        
                        Spacer()
                    }
                    .font(.subheadline)
                    
                    HStack {
                        Image(systemName: "book")
                        Text("Actress")
                        
                        Spacer()
                    }
                    .font(.subheadline)
                }
                .padding()
                .background(Color(.secondarySystemBackground))
                .font(.subheadline)
                .clipShape(RoundedRectangle(cornerRadius: 10))
            }
        }
    }
}

#Preview {
    UserProfileView(user: MockData.users[0])
}

