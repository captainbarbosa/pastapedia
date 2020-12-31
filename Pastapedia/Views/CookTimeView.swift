//
//  CookTimeView.swift
//  Pastapedia
//
//  Created by Nadia Barbosa on 12/30/20.
//

import SwiftUI

struct CookTimeView: View {
    
    var freshPastaCookTime: String
    var driedPastaCookTime: String
    
    var body: some View {
        HStack {
            
            Spacer()
            
            VStack {
                Text("Fresh:")
                    .font(.subheadline)
                Text("\(freshPastaCookTime) min")
                    .font(.title2)
                    .fontWeight(.medium)
            }
            
            Spacer()
            Image(systemName: "drop")
                .font(.title)
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            Spacer()
            
            VStack {
                Text("Dried:")
                    .font(.subheadline)
                if driedPastaCookTime.contains("N/A") {
                    Text("\(driedPastaCookTime)")
                        .font(.title2)
                        .fontWeight(.medium)
                } else {
                    Text("\(driedPastaCookTime) min")
                        .font(.title2)
                        .fontWeight(.medium)
                }
            }
            
            Spacer()
        }
    }
}

struct CookTimeView_Previews: PreviewProvider {
    static var previews: some View {
        CookTimeView(freshPastaCookTime: "< 1", driedPastaCookTime: "3")
            .previewLayout(.fixed(width: 350, height: 80))
    }
}
