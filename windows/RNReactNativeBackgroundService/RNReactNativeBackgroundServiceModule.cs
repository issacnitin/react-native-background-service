using ReactNative.Bridge;
using System;
using System.Collections.Generic;
using Windows.ApplicationModel.Core;
using Windows.UI.Core;

namespace React.Native.Background.Service.RNReactNativeBackgroundService
{
    /// <summary>
    /// A module that allows JS to share data.
    /// </summary>
    class RNReactNativeBackgroundServiceModule : NativeModuleBase
    {
        /// <summary>
        /// Instantiates the <see cref="RNReactNativeBackgroundServiceModule"/>.
        /// </summary>
        internal RNReactNativeBackgroundServiceModule()
        {

        }

        /// <summary>
        /// The name of the native module.
        /// </summary>
        public override string Name
        {
            get
            {
                return "RNReactNativeBackgroundService";
            }
        }
    }
}
