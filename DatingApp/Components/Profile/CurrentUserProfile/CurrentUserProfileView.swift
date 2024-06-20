//
//  CurrentUserProfileView.swift
//  DatingApp
//
//  Created by Helen on 18.06.2024.
//

import SwiftUI

struct CurrentUserProfileView: View {
    @State private var showEditProfile: Bool = false
    let user: User
    
    var body: some View {
        NavigationView {
            List {
                CurrentUserProfileHeaderView(user: user)
                    .onTapGesture {
                        showEditProfile.toggle()
                    }
                
                Section("Account Information") {
                    HStack {
                        Text("Name")
                        
                        Spacer()
                        
                        Text(user.fullName)
                    }
                    
                    HStack {
                        Text("Email")
                        
                        Spacer()
                        
                        Text(user.email)
                    }
                }
                
                Section("Legal") {
                    Text("Terms of service")
                }
                
                Section {
                    Button("Logout") {
                        print("logout")
                    }
                    .foregroundStyle(.red)
                }
               
                
                Section {
                    Button("Delete Account") {
                        print("delete")
                    }
                    .foregroundStyle(.red)
                }
                .navigationTitle("Profile")
                .navigationBarTitleDisplayMode(.inline)
                .fullScreenCover(isPresented: $showEditProfile) {
                    EditProfileView(user: user)
                }
            }
        }
    }
}

#Preview {
    CurrentUserProfileView(user: MockData.users[0])
}
