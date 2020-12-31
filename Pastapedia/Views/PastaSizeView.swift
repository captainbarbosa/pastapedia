//
//  PastaSizeView.swift
//  Pastapedia
//
//  Created by Nadia Barbosa on 12/29/20.
//

import SwiftUI

struct PastaSizeView: View {

    var size: PastaLength
    
    var body: some View {
        HStack {
            Spacer()
            ForEach(PastaLength.allCases, id: \.self) {
                if size == $0 {
                    Text($0.readableSize())
                        .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/,8)
                        .background(RoundedRectangle(cornerRadius: 8, style: .continuous)
                                        .stroke(Color.pastapediaYellowAccent)
                        )
                } else {
                    Text($0.readableSize())
                }
                
                Spacer()
            }

        }
        .padding(EdgeInsets(top: 4, leading: 4, bottom: 4, trailing: 4))
        .cornerRadius(12.0)
    }
}

struct PastaSizeView_Previews: PreviewProvider {
    static var previews: some View {
        PastaSizeView(size: PastaLength.long)
            .previewLayout(.fixed(width: 350, height: 80))
    }
}
