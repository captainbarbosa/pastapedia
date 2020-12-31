//
//  Pasta.swift
//  Pastapedia
//
//  Created by Nadia Barbosa on 12/29/20.
//

import Foundation

enum PastaLength: String, Decodable, CaseIterable {
    case xtraShort
    case short
    case medium
    case long
    
    func readableSize() -> String {
        switch self {
        case .xtraShort:
            return "Tiny"
        case .short:
            return "Short"
        case .medium:
            return "Medium"
        case .long:
            return "Long"
        }
    }
}

struct Pasta: Decodable, Identifiable {
    var id: Int
    var name: String
    var size: PastaLength
    var description: String
    var freshCookTime: String
    var driedCookTime: String
    var alternativeNames: [String]?
    var region: String?
    var imageName: String
    var imageCredit: String
    
    var readableAlternativeNames: String {
        guard let altNames = alternativeNames else { return "" }
        
        return altNames.joined(separator: ", ")
    }
}

var allPastas: [Pasta] = load("pasta.json")

func load<T: Decodable>(_ filename: String) -> T {
    let data: Data
    
    guard let file = Bundle.main.url(forResource: filename, withExtension: nil) else {
        fatalError("Couldn't find \(filename) in main bundle.")
    }

    do {
        data = try Data(contentsOf: file)
    } catch {
        fatalError("Couldn't load \(filename) from main bundle:\n\(error)")
    }

    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Couldn't parse \(filename) as \(T.self):\n\(error)")
    }
    
}
