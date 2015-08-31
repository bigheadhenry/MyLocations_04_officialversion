import UIKit

class LocationCell: UITableViewCell {
  @IBOutlet weak var descriptionLabel: UILabel!
  @IBOutlet weak var addressLabel: UILabel!
  @IBOutlet weak var photoImageView: UIImageView!
  
  func configureForLocation(location: Location) {
    if location.locationDescription.isEmpty {
      descriptionLabel.text = "(No Description)"
    } else {
      descriptionLabel.text = location.locationDescription
      photoImageView.image = imageForLocation(location)
    }
    
    if let placemark = location.placemark {
      var text = ""
      text.addText(placemark.subThoroughfare)
      text.addText(placemark.thoroughfare, withSeparator: " ")
      text.addText(placemark.locality, withSeparator: ", ")
      addressLabel.text = text
    } else {
      addressLabel.text = String(format:"Lat: %.8f, Long: %.8f", location.latitude, location.longitude)
    }
  }
  
  func imageForLocation(location: Location) -> UIImage {
    if location.hasPhoto {
      if let image = location.photoImage {
      return image.resizedImageWithBounds(CGSize(width: 52, height: 52))
      }
    }
    return UIImage()
  }
}
