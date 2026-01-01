# Weather Integration POC

This is a proof-of-concept implementation that adds real-time weather data to job postings based on the job location.

## How It Works

When a job page loads, the weather integration:
1. Extracts the location from the job's front matter (`location` field)
2. Makes an API call to fetch current weather data for that location
3. Displays weather information in two places:
   - **Inline temperature** next to job meta tags (e.g., "45°F" next to "Full-time")
   - **Detailed weather widget** in the job sidebar with full weather details

## Current Implementation

- **Mock Data Mode**: Currently using mock weather data for demonstration
- **Real API Ready**: Can be switched to use OpenWeatherMap API
- **Dual Display**: Temperature appears both inline and in detailed sidebar widget
- **Responsive Design**: Weather elements fit seamlessly into existing layout
- **Error Handling**: Gracefully handles API failures and hides elements on error

## Weather Display Locations

### 1. Inline Temperature Display
- Appears next to job type (Full-time, Part-time, etc.)
- Shows just the temperature (e.g., "45°F")
- Styled as a colored badge matching other job meta tags
- Loads with "Loading..." placeholder

### 2. Detailed Weather Widget
- Located in job sidebar below job details
- Shows temperature, conditions, humidity, wind speed
- Includes weather condition description
- Shows data source (mock vs live)

## Configuration

Edit `_data/weather_config.yml` to configure the weather integration:

```yaml
use_mock_data: true  # Set to false for real API calls
api_key: "your_openweathermap_api_key_here"
api_url: "https://api.openweathermap.org/data/2.5/weather"
```

## To Enable Real Weather Data

1. Sign up for a free account at [OpenWeatherMap](https://openweathermap.org/api)
2. Get your API key
3. Update `_data/weather_config.yml`:
   - Replace `api_key` with your actual key
   - Set `use_mock_data: false`
4. Rebuild your Jekyll site

## Files Modified

- `_layouts/job.html` - Added inline weather display and updated JavaScript
- `assets/css/custom.scss` - Added styling for inline weather and improved job meta layout
- `_data/weather_config.yml` - Configuration file
- Sample job locations updated for testing

## Features Demonstrated

- **Client-side API calls** from Jekyll static sites
- **Dynamic content loading** without page refresh
- **Multiple display locations** for the same data
- **Configuration management** through Jekyll data files
- **Graceful fallbacks** with mock data
- **Responsive design** integration
- **Consistent styling** with existing UI elements

## Styling Features

- **Color-coded job meta tags**: Department (blue), Location (purple), Type (green), Weather (light blue)
- **Consistent badge styling**: Rounded corners, proper spacing, readable fonts
- **Loading states**: Inline "Loading..." text that gets replaced with temperature
- **Error handling**: Weather elements hide gracefully if data fails to load

## Potential Enhancements

- Cache weather data to reduce API calls
- Add weather icons next to temperature
- Show forecast data
- Add more weather details (UV index, visibility, etc.)
- Implement geolocation for more precise weather data
- Add weather-based job recommendations
- Add weather condition icons in inline display

## API Limits

OpenWeatherMap free tier includes:
- 1,000 API calls per day
- 60 calls per minute
- Current weather data only

For production use, consider:
- Caching strategies
- Rate limiting
- Paid API tiers for higher limits
- Alternative weather APIs