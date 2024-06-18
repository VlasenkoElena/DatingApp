//
//  ImageScrollingOverlayView.swift
//  DatingApp
//
//  Created by Helen on 13.06.2024.
//

import SwiftUI

struct ImageScrollingOverlayView: View {
    @Binding var currentImageIndex: Int
    
    let imageCount: Int
    
    var body: some View {
        HStack {
            Rectangle()
                .onTapGesture {
                    updateImageIndex(increment: false)
                }
            
            Rectangle()
                .onTapGesture {
                    updateImageIndex(increment: true)
                }
        }
        .foregroundColor(.white.opacity(0.01))
    }
}

private extension ImageScrollingOverlayView {
    func updateImageIndex(increment: Bool) {
        if increment {
            guard currentImageIndex < imageCount - 1 else { return }
            currentImageIndex += 1
        } else {
            guard currentImageIndex > 0 else { return }
            currentImageIndex -= 1
        }
    }
}

#Preview {
    ImageScrollingOverlayView(currentImageIndex: .constant(1), imageCount: 3)
}
