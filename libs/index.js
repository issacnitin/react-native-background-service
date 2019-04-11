"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const react_native_1 = require("react-native");
const RNBackgroundServiceLocationService = react_native_1.NativeModules.LocationService;
const RNBackgroundServiceLocationListener = new react_native_1.NativeEventEmitter(react_native_1.NativeModules.LocationService);
exports.default = { RNBackgroundServiceLocationListener,
    RNBackgroundServiceLocationService };
