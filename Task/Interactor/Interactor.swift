

//
//  InterActor.swift
//  Task
//
//  Created by a7med on 10/2/19.
//  Copyright © 2019 a7med. All rights reserved.
//

import Foundation
class Interactor{
    enum DecodingError: Error {
        case missing_file
    }
    private let decoder = JSONDecoder()
    private let file_name = "brands"
     func read_file(completionHandler: @escaping ([Brands_Base]?) -> ()) throws  {
        guard let url = Bundle.main.url(forResource: file_name, withExtension: "json") else {
            throw DecodingError.missing_file
        }
        let data = try Data(contentsOf: url)
       let model = try decoder.decode([Brands_Base].self, from: data)
        print("model ==>>\(model)")
        completionHandler(model)
    }
}
