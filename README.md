# Tripsearch

## Project Introduction
It is my first rails project. I created a web search website based on rails. A user can log in and search for a destination that they want to visit and save it in a wishlist. It has several different models with one_to_many, many_to_many associations. Demo: https://tripsearch.herokuapp.com/

## Working Flow
Step1: You can login with email: john@ga.co password: chicken . After the user login, the user can search destinations by countries, cities or attractions, and the user does not have to type the full name of that destination. 
![image1](images/1.png)
If the user only type ja in search area, it will match Japan in its database. Also, google map shows marker of that destination.
![image2](images/2.png)
User can see details about Japan by clicking it.
![image3](images/3.png)
User also can save this place into their personal wishlist.
![image4](images/4.png)

Personal wishlist can be found in user profiles page.

![image5](images/5.png)
![image6](images/6.png)
## Code Explanation
In `countries_controller`, there is a search function:
```
  def search
    @countries = Country.where('name ILIKE ?', "%#{params[:search_text]}%")
  end
```
. So, user can search a country without full name, only first few characters. This method is also utilised in `cities_controller` and `attractions_controller`.
```
 def map
    @countries = Country.where.not(latitude:nil ,longitude:nil).select(:latitude, :longitude, :name)
  end
```

```
<div id="map"></div>
<script>
    const countries = <%= @countries.to_json.html_safe %>
     function initMap() {
       var myLatLng = {lat: -25.363, lng: 131.044};


      var bounds = new google.maps.LatLngBounds();

       var map = new google.maps.Map(document.getElementById('map'), {
         // zoom: 15,
         // center: {lat: countries[0].latitude, lng: countries[0].longitude}
       });

      for(let i = 0; i < countries.length; i ++){
        const country = countries[i];//get current item

       var marker = new google.maps.Marker({
         position: {lat: country.latitude, lng: country.longitude},
         map: map,
         title: country.name
       });
       // add the lastest marker to the bounding box
       bounds.extend(marker.position);
     } // for
     // make the map fit within the box
     map.fitBounds( bounds );

   } // initMap
   </script>
<script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyB2ai0xcVHX45ezIGP-E-wXg3ZKlZyzP5s&callback=initMap">
</script>
</div>
```
A map function and google map script are used to demonstrate locations.
In `wishlists_controller`, three methods are responsible for adding destinations into wishlists.
```
  # action to add country into current user wishlist
  def add_country
    # raise 'hell'
    country = Country.find params[:id]
    @current_user.wishlist.countries << country

    flash[:notice] = "Successfully added!"
    redirect_to country_path(country.id)
  end

  def add_attraction
    # raise 'hell'
    attraction = Attraction.find params[:id]
    @current_user.wishlist.attractions << attraction

    flash[:notice] = "Successfully added!"
    redirect_to attraction_path(attraction.id)
  end

  def add_city
    # raise 'hell'
    city = City.find params[:id]
    @current_user.wishlist.cities << city

    flash[:notice] = "Successfully added!"
    redirect_to city_path(city.id)
  end
```

## Roadmap
For the future plan, I will use an external API to have more searching results.

## Authors and acknowledgment
I would like to thank Luke Hammer and Josh Parry who is helping me through the entire project.


