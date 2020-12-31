//
//  PastaDetail.swift
//  Pastapedia
//
//  Created by Nadia Barbosa on 12/29/20.
//

import SwiftUI

struct PastaDetail: View {
    
    var pasta: Pasta
    
    @Environment(\.presentationMode) var mode: Binding<PresentationMode>
    
    var body: some View {
        // Pasta attributes list
        List {
            
            // Image
            Section {
                Image(pasta.imageName)
                    .resizable()
                    .aspectRatio(contentMode: .fill)
                    .frame(maxWidth: .infinity, maxHeight: 250)
                    .clipped()
                    .listRowInsets(.init(top: 0, leading: 0, bottom: 0, trailing: 0))
            }
            
            // Description
            Section(header: Text("Description")) {
                Text(pasta.description)
                    .padding(EdgeInsets(top: 6, leading: 2, bottom: 6, trailing: 2))
            }
            
            // Pasta length
            Section(header: Text("Length")) {
                PastaSizeView(size: pasta.size)
                    .frame(minWidth: 0, maxWidth: .infinity)
            }
            
            // Cook time
            Section(header: Text("Description")) {
                CookTimeView(freshPastaCookTime: pasta.freshCookTime,
                             driedPastaCookTime: pasta.driedCookTime)
                    .padding()
            }
            
            // Region (optional)
            if pasta.region != nil {
                Section(header: Text("Origin")) {
                    Text(pasta.region!)
                }
            }
            
            // Alternative names (optional)
            if pasta.alternativeNames != nil {
                Section(header: Text("Alternative names")) {
                    Text(pasta.readableAlternativeNames)
                }
            }
        }
        .listStyle(InsetGroupedListStyle())
        .padding(.top, 10)
        .navigationBarTitle(pasta.name)
    }
}


struct PastaDetail_Previews: PreviewProvider {
    static var previews: some View {
        PastaDetail(pasta: allPastas[0])
    }
}
