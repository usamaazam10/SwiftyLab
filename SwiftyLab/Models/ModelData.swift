//
//  ModelData.swift
//  SwiftyLab
//
//  Created by Usama Azam on 26/12/2024.
//

import Foundation

let landmarks: [Landmark] = load(fileName: "landmarkData.json")

func load<T:Codable>(fileName:String) -> T {
    
    guard let fileUrl = Bundle.main.url(forResource: fileName, withExtension: nil) else { fatalError("\(fileName) File not found in main bundle") }
    
    let data: Data
    
    do {
        data = try Data(contentsOf: fileUrl)
    } catch {
        fatalError("\(fileName) File not found in main bundle with error \(error.localizedDescription)")
    }
    
    do {
        let decoder = JSONDecoder()
        return try decoder.decode(T.self, from: data)
    } catch {
        fatalError("Unable to parse data from file \(fileName) to type type \(T.self) with error \(error.localizedDescription)")
    }
    
}
