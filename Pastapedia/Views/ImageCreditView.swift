//
//  ImageCreditView.swift
//  Pastapedia
//
//  Created by Nadia Barbosa on 12/29/20.
//

import SwiftUI

struct ImageCreditView: View {
    
    var imageCredit: String
    
    @State private var showingAlert = false
    
    var body: some View {
        Button(action: {
            self.showingAlert = true
        }) {
            Image(systemName: "info.circle.fill")
                .font(Font.system(.title2).bold())
                .foregroundColor(Color.white.opacity(0.8))
        }
        .alert(isPresented: $showingAlert) {
            Alert(title: Text("Image Credit:"), message: Text(imageCredit), dismissButton: .default(Text("Dismiss")))
        }
    }
}

struct ImageCreditView_Previews: PreviewProvider {
    static var previews: some View {
        ImageCreditView(imageCredit: "Credit")
    }
}
