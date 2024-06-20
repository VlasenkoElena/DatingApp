//
//  ProfileImageGridView.swift
//  DatingApp
//
//  Created by Helen on 19.06.2024.
//

import SwiftUI

struct ProfileImageGridView: View {
    let user: User
    
    private let columns: [GridItem] = [
            .init(.flexible()),
            .init(.flexible()),
            .init(.flexible())
        ]
    
    var body: some View {
        LazyVGrid(columns: columns, spacing: 16) {
            ForEach(0 ..< 6) { index in
                if index < user.profileImagesUrl.count {
                    Image(user.profileImagesUrl[index])
                        .resizable()
                        .scaledToFill()
                        .frame(width: imageWidth, height: imageHeight)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                } else {
                    ZStack(alignment: .bottomTrailing) {
                        RoundedRectangle(cornerRadius: 10)
                            .fill(Color(.secondarySystemBackground))
                            .frame(width: imageWidth, height: imageHeight)
                        
                        Image(systemName: "plus.circle.fill")
                            .imageScale(.large)
                            .foregroundStyle(Color(.systemPink))
                            .offset(x: 4, y: 4)
                    }
                }
            }
        }
    }
}

private extension ProfileImageGridView {
    var imageWidth: CGFloat {
        return 110
    }
    
    var imageHeight: CGFloat {
        return 160
    }
}

#Preview {
    ProfileImageGridView(user: MockData.users[0])
}
