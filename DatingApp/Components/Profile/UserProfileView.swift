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
                    }
                    
                    CardImageIndicatorView(currentImageIndex: currentImageIndex, imageCount: user.profileImagesUrl.count)
                }
            }
        }
    }
}

#Preview {
    UserProfileView(user: MockData.users[0])
}

