//
//  DataParser.swift
//  Landmarks
//
//  Created by Asif Seraje on 24/5/24.
//

import Foundation

class DataParser{
    
    public static let shared = DataParser()
    
    func getLandmarks() -> [Landmarks]{
        guard let path = Bundle.main.path(forResource: "landmarkData", ofType: "json") else {
            return []
        }
        do {
            let fileUrl = URL(fileURLWithPath: path)
            let data = try Data(contentsOf: fileUrl)
            
            let resultArray = try JSONDecoder().decode([Landmarks].self, from: data)
            print(resultArray)
            return resultArray
        }
        catch let jsonError {
            print("Json Error:", jsonError)
            return []
        }
    }
}
