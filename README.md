# Sanskriti - UIKit Implementation

## Functional Requirements Implemented

### Image Carousel (`BannerView`)
- Created a horizontally scrollable image banner using `UICollectionView`.
- Whenever the user swipes left or right, the list content changes accordingly.
- It works smoothly with any number of images, whether they are local or from a URL.

### List View (`FrequencySummaryView`)
- Implemented a vertically scrollable `UITableView` that supports full-page scrolling.
- The list dynamically updates based on the selected banner image.
- Clean integration for seamless UX.

### Search Functionality (`SearchBarView`)
- Custom `UISearchBar` with sticky/pinned behavior — it stays at the top when you scroll.
- As the user types, the list gets filtered in real-time based on the text.

### Floating Action Button (FAB)
- A floating action button is placed over the main content using custom layout.
- On tap, it opens a bottom sheet which shows:
  - Total number of items for the selected banner.
  - Top 3 most repeated characters from the list items.
    - For example:  
      Input list: `["apple", "banana", "orange", "blueberry"]`  
      Output:
      - `a = 5`  
      - `e = 4`  
      - `r = 3`

## Architecture and Structure

### MVVM Architecture
- Followed MVVM structure under `Features/HomeView`:
  - `Model`: `HomeUIModel`
  - `View`: `HomeVC`
  - `ViewModel`: `HomeViewModel`
- Makes the logic clean, testable, and easy to maintain.

### Reusable UIKit Components
- All reusable views and cells are placed inside `UIComponents`:
  - `BannerCell`
  - `BannerView`
  - `SearchBarView`
  - `FrequencySummaryView`
  - `ImageDetailsView`

### Core and Utility Layers
- Common reusable extensions are inside `Core/Utilities/Extensions`:
  - `Array+Extension`
  - `UIColor+Extension`
  - `UIView+Extension`
  - `UITableView+Extension`
  - `UITextField+Extension`
- JSON loading logic is in `Managers/JSONLoader`.
- `MediaGroup` model is used for structured local/remote data handling.
