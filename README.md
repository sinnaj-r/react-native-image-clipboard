
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

1. Open up `android/app/src/main/java/[...]/MainActivity.java`
  - Add `import com.reactlibrary.RNReactNativeImageClipboardPackage;` to the imports at the top of the file
  - Add `new RNReactNativeImageClipboardPackage()` to the list returned by the `getPackages()` method
2. Append the following lines to `android/settings.gradle`:
  	```
  	include ':react-native-react-native-image-clipboard'
  	project(':react-native-react-native-image-clipboard').projectDir = new File(rootProject.projectDir, 	'../node_modules/react-native-react-native-image-clipboard/android')
  	```
3. Insert the following lines inside the dependencies block in `android/app/build.gradle`:
  	```
      compile project(':react-native-react-native-image-clipboard')
  	```

## Usage
```javascript
import RNReactNativeImageClipboard from 'react-native-react-native-image-clipboard';

// TODO: What to do with the module?
RNReactNativeImageClipboard;
```
  