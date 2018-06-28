import Foundation
import SwiftyJSON

class Customer {
    var id: Int
    var login: String
    var password: String
    var name: String
    var lastName: String
    var email: String
    var documentTypeId: Int
    var documentNumber: String
    var phoneNumber: String
    var address: String
    var reference: String
    var latitude: Double
    var longitude: Double
    var rate: Double
    var online: Bool
    var state: Bool
    
    init(id: Int, login: String, password: String, name: String, lastName: String,
         email: String, documentTypeId: Int, documentNumber: String, phoneNumber: String,
         address: String, reference: String,
         latitude: Double, longitude: Double, rate: Double, online: Bool, state: Bool) {
        self.id = id
        self.login = login
        self.password = password
        self.name = name
        self.lastName = lastName
        self.email = email
        self.documentTypeId = documentTypeId
        self.documentNumber = documentNumber
        self.phoneNumber = phoneNumber
        self.address = address
        self.reference = reference
        self.latitude = latitude
        self.longitude = longitude
        self.rate = rate
        self.online = online
        self.state = state
    }
    
    convenience init(from jsonSource: JSON) {
        self.init(id: jsonSource["id"].intValue,
                  login: jsonSource["login"].stringValue,
                  password: jsonSource["password"].stringValue,
                  name: jsonSource["name"].stringValue,
                  lastName: jsonSource["lastName"].stringValue,
                  email: jsonSource["email"].stringValue,
                  documentTypeId: jsonSource["documentTypeId"].intValue,
                  documentNumber: jsonSource["documentNumber"].stringValue,
                  phoneNumber: jsonSource["phoneNumber"].stringValue,
                  address: jsonSource["address"].stringValue,
                  reference: jsonSource["reference"].stringValue,
                  latitude:jsonSource["latitude"].doubleValue,
                  longitude: jsonSource["longitude"].doubleValue,
                  rate: jsonSource["rate"].doubleValue,
                  online: jsonSource["online"].boolValue,
                  state: jsonSource["state"].boolValue)
    }
    
    class func buildAll(from jsonCustomers: [JSON]) -> [Customer]{
        let count = jsonCustomers.count
        var customer: [Customer] = []
        for i in 0 ..< count {
            customer.append(Customer(from: JSON(jsonCustomers[i])))
        }
        return customer
    }
    
    class func build(from jsonCustomers: JSON) -> Customer{
        var customer: Customer
        customer = Customer(from: JSON(jsonCustomers))
        return customer
    }
}
        

