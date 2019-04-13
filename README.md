
# react-native-react-native-image-clipboard

## Getting started

`$ npm install react-native-react-native-image-clipboard --save`

### Mostly automatic installation

`$ react-native link react-native-react-native-image-clipboard`

### Manual installation


#### iOS

1. In XCode, in the project navigator, right click `Libraries` ➜ `Add Files to [your project's name]`
2. Go to `node_modules` ➜ `react-native-react-native-image-clipboard` and add `RNReactNativeImageClipboard.xcodeproj`
3. In XCode, in the project navigator, select your project. Add `libRNReactNativeImageClipboard.a` to your project's `Build Phases` ➜ `Link Binary With Libraries`
4. Run your project (`Cmd+R`)<

#### Android

#### Currently not Supported !

## Usage
```javascript
import RNImageClipboard from 'react-native-react-native-image-clipboard';

const imageFromClipboard = await RNImageClipboard.getBase64Image();
RNImageClipboard.addBase64Image(imageFromClipboard);
```
  