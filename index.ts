
import { NativeModules, NativeEventEmitter } from 'react-native';

const RNBackgroundServiceLocationService = NativeModules.LocationService;
const RNBackgroundServiceLocationListener = new NativeEventEmitter(NativeModules.LocationService);

export default { RNBackgroundServiceLocationListener,
RNBackgroundServiceLocationService}