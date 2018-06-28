//
//  TratoHechoApi.swift
//  iCatchUp
//
//  Created by Alumnos on 6/25/18.
//  Copyright © 2018 ACME. All rights reserved.
//

import Foundation

class TratoHechoApi {
    
    static let AuthenticacionUrl = "http://movilesupc.somee.com/api/customers/authentications"
    static let FavoritesUrl = "http://movilesupc.somee.com/api/customers/2/favorites"
    
    public static var GetFavorites: String {
        return "\(FavoritesUrl)"
    }
    
    public static var GetAuthentication: String{
        return "\(AuthenticacionUrl)"
    }
    
}
