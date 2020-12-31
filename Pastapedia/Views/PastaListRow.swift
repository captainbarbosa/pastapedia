//
//  PastaListRow.swift
//  Pastapedia
//
//  Created by Nadia Barbosa on 12/29/20.
//

import SwiftUI

struct PastaListRow: View {
    
    var pasta: Pasta
    
    var body: some View {
        HStack {
            Image(pasta.imageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 60, height: 60)
                .clipShape(Circle())
            Text(pasta.name)
                .font(.title2)
                .fontWeight(.medium)
                .padding(.leading, 8)
        }
    }
}

struct PastaListRow_Previews: PreviewProvider {
    static var previews: some View {
        PastaListRow(pasta: allPastas[0])
        .previewLayout(.fixed(width: 300, height: 100))
    }
}
