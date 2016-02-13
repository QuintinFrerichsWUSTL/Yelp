//
//  DetailsViewController.swift
//  Yelp
//
//  Created by Quintin Frerichs on 2/13/16.
//  Copyright © 2016 Timothy Lee. All rights reserved.
//

import UIKit
import MapKit
import CoreLocation
import AddressBookUI
class DetailsViewController: UIViewController {
    var business: Business!
    var  initialLocation = CLLocation(latitude: 21.282778, longitude: -157.829444)
    @IBOutlet weak var ratingsImageView: UIImageView!
    @IBOutlet weak var mapView: MKMapView!
    @IBOutlet weak var thumbImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var addressLabel: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        let address = business.address
        
        let title = business.name
        titleLabel.text = title
        addressLabel.text = business.address
        ratingsImageView.setImageWithURL(business.ratingImageURL!)
        thumbImageView.setImageWithURL(business.imageURL!)
        let centerLocation = CLLocation(latitude: 37.7833, longitude: -122.4167)
        goToLocation(centerLocation)
   }
    
    
    
    
    
    
    
    
    func goToLocation(location: CLLocation) {
        let span = MKCoordinateSpanMake(0.1, 0.1)
        let region = MKCoordinateRegionMake(location.coordinate, span)
        mapView.setRegion(region, animated: false)
    }
  
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
