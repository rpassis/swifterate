enum MyPlistEnum: String {

    case CFBundleName = "CFBundleName"
    case CFBundleShortVersionString = "CFBundleShortVersionString"
    case CFBundleVersion = "CFBundleVersion"
    case UISupportedInterfaceOrientationsipad = "UISupportedInterfaceOrientations~ipad"

    private var infoDictionary: [NSObject : AnyObject] {
        return NSBundle.mainBundle().infoDictionary!
    }

    var dictionary: [NSObject : AnyObject] {
        return infoDictionary[rawValue] as! [NSObject : AnyObject]
    }
    
    var array: [AnyObject] {
        return infoDictionary[rawValue] as! [AnyObject]
    }
    
    var data: NSData {
        return infoDictionary[rawValue] as! NSData
    }
    
    var date: NSDate {
        return infoDictionary[rawValue] as! NSDate
    }
    
    var number: NSNumber {
        return infoDictionary[rawValue] as! NSNumber
    }
    
    var string: String {
        return infoDictionary[rawValue] as! String
    }


    init(_ key: MyPlistEnum) {
        self = key
    }

}
