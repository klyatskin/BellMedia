
import Foundation

extension DateFormatter {
    static let input: DateFormatter = {
        let formatter = DateFormatter()
        // "2020-02-10T15:49:05Z",
        formatter.dateFormat = "yyyy-MM-dd'T'HH:mm:ssZ"
        return formatter
    }()
    
    static let output: DateFormatter = {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy/MM/dd @ HH:mm:ss"
        return formatter
    }()

    

}
