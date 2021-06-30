# Project 2 - Flix

Flix is a movies app using the [The Movie Database API](http://docs.themoviedb.apiary.io/#).

Time spent: 16.5 hours spent in total

## User Stories

The following **required** functionality is complete:

- [x] User sees an app icon on the home screen and a styled launch screen.
- [x] User can view a list of movies currently playing in theaters from The Movie Database.
- [x] Poster images are loaded using the UIImageView category in the AFNetworking library.
- [x] User sees a loading state while waiting for the movies API.
- [x] User can pull to refresh the movie list.
- [x] User sees an error message when there's a networking error.
- [x] User can tap a tab bar button to view a grid layout of Movie Posters using a CollectionView.

The following **optional** features are implemented:

- [x] User can tap a poster in the collection view to see a detail screen of that movie
- [x] User can search for a movie by title (table view) or by keyword (collection view).
- [x] All images fade in as they are loading.
- [ ] User can view the large movie poster by tapping on a cell.
- [ ] For the large poster, load the low resolution image first and then switch to the high resolution image when complete.
- [x] Customize the selection effect of the cell (remove the grey selection highlight when returning to the page).
- [ ] Customize the navigation bar.
- [x] Customize the UI.
- [ ] User can view the app on various device sizes and orientations.
- [x] Run your app on a real device.

The following **additional** features are implemented:

- [x] Users can view upcoming movies in the collection view (updated the API)
- [x] Users can view the movie's trailer when tapping on the movie's poster in the detail pages
- [x] Added a settings page that allows user to order the results based on movie's release date

Please list two areas of the assignment you'd like to **discuss further with your peers** during the next class (examples include better ways to implement something, how to extend your app in certain ways, etc):

1. I want to add more customizations for the users which requires being more familiar with the different components.
2. I want to work on my UI/graphic design. It's hard for me to come up with a vision of what I want my app to look like.

## Video Walkthrough

Here's a walkthrough of implemented user stories:
![](https://i.imgur.com/IL6WNyH.gif)


GIF created with [Kap](https://getkap.co/).

## Notes

I mainly struggled with the UI design, and deciding on the style of the app. I was unsure where I wanted to place components. As such, I based my design on the base design and worked off it. 

I had other struggles such as an error from multiple segues that I fixed by adding the necessary identifiers. 

## Credits

List an 3rd party libraries, icons, graphics, or other assets you used in your app.

- [AFNetworking](https://github.com/AFNetworking/AFNetworking) - networking task library

## License

    Copyright 2021 Melody Wen

    Licensed under the Apache License, Version 2.0 (the "License");
    you may not use this file except in compliance with the License.
    You may obtain a copy of the License at

        http://www.apache.org/licenses/LICENSE-2.0

    Unless required by applicable law or agreed to in writing, software
    distributed under the License is distributed on an "AS IS" BASIS,
    WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    See the License for the specific language governing permissions and
    limitations under the License.
