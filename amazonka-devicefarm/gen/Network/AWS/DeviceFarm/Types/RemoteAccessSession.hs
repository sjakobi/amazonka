{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.Types.RemoteAccessSession
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.RemoteAccessSession where

import Network.AWS.DeviceFarm.Types.BillingMethod
import Network.AWS.DeviceFarm.Types.Device
import Network.AWS.DeviceFarm.Types.DeviceMinutes
import Network.AWS.DeviceFarm.Types.ExecutionResult
import Network.AWS.DeviceFarm.Types.ExecutionStatus
import Network.AWS.DeviceFarm.Types.InteractionMode
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Represents information about the remote access session.
--
--
--
-- /See:/ 'remoteAccessSession' smart constructor.
data RemoteAccessSession = RemoteAccessSession'
  { _rasDeviceUdid ::
      !(Maybe Text),
    _rasClientId :: !(Maybe Text),
    _rasStatus ::
      !(Maybe ExecutionStatus),
    _rasResult ::
      !(Maybe ExecutionResult),
    _rasInteractionMode ::
      !(Maybe InteractionMode),
    _rasStarted :: !(Maybe POSIX),
    _rasMessage :: !(Maybe Text),
    _rasDevice :: !(Maybe Device),
    _rasArn :: !(Maybe Text),
    _rasName :: !(Maybe Text),
    _rasInstanceARN ::
      !(Maybe Text),
    _rasBillingMethod ::
      !(Maybe BillingMethod),
    _rasRemoteRecordEnabled ::
      !(Maybe Bool),
    _rasSkipAppResign ::
      !(Maybe Bool),
    _rasStopped :: !(Maybe POSIX),
    _rasHostAddress ::
      !(Maybe Text),
    _rasEndpoint :: !(Maybe Text),
    _rasCreated :: !(Maybe POSIX),
    _rasRemoteDebugEnabled ::
      !(Maybe Bool),
    _rasRemoteRecordAppARN ::
      !(Maybe Text),
    _rasDeviceMinutes ::
      !(Maybe DeviceMinutes)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'RemoteAccessSession' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rasDeviceUdid' - Unique device identifier for the remote device. Only returned if remote debugging is enabled for the remote access session. Remote debugging is <https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html no longer supported> .
--
-- * 'rasClientId' - Unique identifier of your client for the remote access session. Only returned if remote debugging is enabled for the remote access session. Remote debugging is <https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html no longer supported> .
--
-- * 'rasStatus' - The status of the remote access session. Can be any of the following:     * PENDING.     * PENDING_CONCURRENCY.     * PENDING_DEVICE.     * PROCESSING.     * SCHEDULING.     * PREPARING.     * RUNNING.     * COMPLETED.     * STOPPING.
--
-- * 'rasResult' - The result of the remote access session. Can be any of the following:     * PENDING.     * PASSED.     * WARNED.     * FAILED.     * SKIPPED.     * ERRORED.     * STOPPED.
--
-- * 'rasInteractionMode' - The interaction mode of the remote access session. Valid values are:     * INTERACTIVE: You can interact with the iOS device by viewing, touching, and rotating the screen. You cannot run XCUITest framework-based tests in this mode.     * NO_VIDEO: You are connected to the device, but cannot interact with it or view the screen. This mode has the fastest test execution speed. You can run XCUITest framework-based tests in this mode.     * VIDEO_ONLY: You can view the screen, but cannot touch or rotate it. You can run XCUITest framework-based tests and watch the screen in this mode.
--
-- * 'rasStarted' - The date and time the remote access session was started.
--
-- * 'rasMessage' - A message about the remote access session.
--
-- * 'rasDevice' - The device (phone or tablet) used in the remote access session.
--
-- * 'rasArn' - The Amazon Resource Name (ARN) of the remote access session.
--
-- * 'rasName' - The name of the remote access session.
--
-- * 'rasInstanceARN' - The ARN of the instance.
--
-- * 'rasBillingMethod' - The billing method of the remote access session. Possible values include @METERED@ or @UNMETERED@ . For more information about metered devices, see <https://docs.aws.amazon.com/devicefarm/latest/developerguide/welcome.html#welcome-terminology AWS Device Farm terminology> .
--
-- * 'rasRemoteRecordEnabled' - This flag is set to @true@ if remote recording is enabled for the remote access session.
--
-- * 'rasSkipAppResign' - When set to @true@ , for private devices, Device Farm does not sign your app again. For public devices, Device Farm always signs your apps again. For more information about how Device Farm re-signs your apps, see <https://aws.amazon.com/device-farm/faq/ Do you modify my app?> in the /AWS Device Farm FAQs/ .
--
-- * 'rasStopped' - The date and time the remote access session was stopped.
--
-- * 'rasHostAddress' - IP address of the EC2 host where you need to connect to remotely debug devices. Only returned if remote debugging is enabled for the remote access session. Remote debugging is <https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html no longer supported> .
--
-- * 'rasEndpoint' - The endpoint for the remote access sesssion.
--
-- * 'rasCreated' - The date and time the remote access session was created.
--
-- * 'rasRemoteDebugEnabled' - This flag is set to @true@ if remote debugging is enabled for the remote access session. Remote debugging is <https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html no longer supported> .
--
-- * 'rasRemoteRecordAppARN' - The ARN for the app to be recorded in the remote access session.
--
-- * 'rasDeviceMinutes' - The number of minutes a device is used in a remote access session (including setup and teardown minutes).
remoteAccessSession ::
  RemoteAccessSession
remoteAccessSession =
  RemoteAccessSession'
    { _rasDeviceUdid = Nothing,
      _rasClientId = Nothing,
      _rasStatus = Nothing,
      _rasResult = Nothing,
      _rasInteractionMode = Nothing,
      _rasStarted = Nothing,
      _rasMessage = Nothing,
      _rasDevice = Nothing,
      _rasArn = Nothing,
      _rasName = Nothing,
      _rasInstanceARN = Nothing,
      _rasBillingMethod = Nothing,
      _rasRemoteRecordEnabled = Nothing,
      _rasSkipAppResign = Nothing,
      _rasStopped = Nothing,
      _rasHostAddress = Nothing,
      _rasEndpoint = Nothing,
      _rasCreated = Nothing,
      _rasRemoteDebugEnabled = Nothing,
      _rasRemoteRecordAppARN = Nothing,
      _rasDeviceMinutes = Nothing
    }

-- | Unique device identifier for the remote device. Only returned if remote debugging is enabled for the remote access session. Remote debugging is <https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html no longer supported> .
rasDeviceUdid :: Lens' RemoteAccessSession (Maybe Text)
rasDeviceUdid = lens _rasDeviceUdid (\s a -> s {_rasDeviceUdid = a})

-- | Unique identifier of your client for the remote access session. Only returned if remote debugging is enabled for the remote access session. Remote debugging is <https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html no longer supported> .
rasClientId :: Lens' RemoteAccessSession (Maybe Text)
rasClientId = lens _rasClientId (\s a -> s {_rasClientId = a})

-- | The status of the remote access session. Can be any of the following:     * PENDING.     * PENDING_CONCURRENCY.     * PENDING_DEVICE.     * PROCESSING.     * SCHEDULING.     * PREPARING.     * RUNNING.     * COMPLETED.     * STOPPING.
rasStatus :: Lens' RemoteAccessSession (Maybe ExecutionStatus)
rasStatus = lens _rasStatus (\s a -> s {_rasStatus = a})

-- | The result of the remote access session. Can be any of the following:     * PENDING.     * PASSED.     * WARNED.     * FAILED.     * SKIPPED.     * ERRORED.     * STOPPED.
rasResult :: Lens' RemoteAccessSession (Maybe ExecutionResult)
rasResult = lens _rasResult (\s a -> s {_rasResult = a})

-- | The interaction mode of the remote access session. Valid values are:     * INTERACTIVE: You can interact with the iOS device by viewing, touching, and rotating the screen. You cannot run XCUITest framework-based tests in this mode.     * NO_VIDEO: You are connected to the device, but cannot interact with it or view the screen. This mode has the fastest test execution speed. You can run XCUITest framework-based tests in this mode.     * VIDEO_ONLY: You can view the screen, but cannot touch or rotate it. You can run XCUITest framework-based tests and watch the screen in this mode.
rasInteractionMode :: Lens' RemoteAccessSession (Maybe InteractionMode)
rasInteractionMode = lens _rasInteractionMode (\s a -> s {_rasInteractionMode = a})

-- | The date and time the remote access session was started.
rasStarted :: Lens' RemoteAccessSession (Maybe UTCTime)
rasStarted = lens _rasStarted (\s a -> s {_rasStarted = a}) . mapping _Time

-- | A message about the remote access session.
rasMessage :: Lens' RemoteAccessSession (Maybe Text)
rasMessage = lens _rasMessage (\s a -> s {_rasMessage = a})

-- | The device (phone or tablet) used in the remote access session.
rasDevice :: Lens' RemoteAccessSession (Maybe Device)
rasDevice = lens _rasDevice (\s a -> s {_rasDevice = a})

-- | The Amazon Resource Name (ARN) of the remote access session.
rasArn :: Lens' RemoteAccessSession (Maybe Text)
rasArn = lens _rasArn (\s a -> s {_rasArn = a})

-- | The name of the remote access session.
rasName :: Lens' RemoteAccessSession (Maybe Text)
rasName = lens _rasName (\s a -> s {_rasName = a})

-- | The ARN of the instance.
rasInstanceARN :: Lens' RemoteAccessSession (Maybe Text)
rasInstanceARN = lens _rasInstanceARN (\s a -> s {_rasInstanceARN = a})

-- | The billing method of the remote access session. Possible values include @METERED@ or @UNMETERED@ . For more information about metered devices, see <https://docs.aws.amazon.com/devicefarm/latest/developerguide/welcome.html#welcome-terminology AWS Device Farm terminology> .
rasBillingMethod :: Lens' RemoteAccessSession (Maybe BillingMethod)
rasBillingMethod = lens _rasBillingMethod (\s a -> s {_rasBillingMethod = a})

-- | This flag is set to @true@ if remote recording is enabled for the remote access session.
rasRemoteRecordEnabled :: Lens' RemoteAccessSession (Maybe Bool)
rasRemoteRecordEnabled = lens _rasRemoteRecordEnabled (\s a -> s {_rasRemoteRecordEnabled = a})

-- | When set to @true@ , for private devices, Device Farm does not sign your app again. For public devices, Device Farm always signs your apps again. For more information about how Device Farm re-signs your apps, see <https://aws.amazon.com/device-farm/faq/ Do you modify my app?> in the /AWS Device Farm FAQs/ .
rasSkipAppResign :: Lens' RemoteAccessSession (Maybe Bool)
rasSkipAppResign = lens _rasSkipAppResign (\s a -> s {_rasSkipAppResign = a})

-- | The date and time the remote access session was stopped.
rasStopped :: Lens' RemoteAccessSession (Maybe UTCTime)
rasStopped = lens _rasStopped (\s a -> s {_rasStopped = a}) . mapping _Time

-- | IP address of the EC2 host where you need to connect to remotely debug devices. Only returned if remote debugging is enabled for the remote access session. Remote debugging is <https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html no longer supported> .
rasHostAddress :: Lens' RemoteAccessSession (Maybe Text)
rasHostAddress = lens _rasHostAddress (\s a -> s {_rasHostAddress = a})

-- | The endpoint for the remote access sesssion.
rasEndpoint :: Lens' RemoteAccessSession (Maybe Text)
rasEndpoint = lens _rasEndpoint (\s a -> s {_rasEndpoint = a})

-- | The date and time the remote access session was created.
rasCreated :: Lens' RemoteAccessSession (Maybe UTCTime)
rasCreated = lens _rasCreated (\s a -> s {_rasCreated = a}) . mapping _Time

-- | This flag is set to @true@ if remote debugging is enabled for the remote access session. Remote debugging is <https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html no longer supported> .
rasRemoteDebugEnabled :: Lens' RemoteAccessSession (Maybe Bool)
rasRemoteDebugEnabled = lens _rasRemoteDebugEnabled (\s a -> s {_rasRemoteDebugEnabled = a})

-- | The ARN for the app to be recorded in the remote access session.
rasRemoteRecordAppARN :: Lens' RemoteAccessSession (Maybe Text)
rasRemoteRecordAppARN = lens _rasRemoteRecordAppARN (\s a -> s {_rasRemoteRecordAppARN = a})

-- | The number of minutes a device is used in a remote access session (including setup and teardown minutes).
rasDeviceMinutes :: Lens' RemoteAccessSession (Maybe DeviceMinutes)
rasDeviceMinutes = lens _rasDeviceMinutes (\s a -> s {_rasDeviceMinutes = a})

instance FromJSON RemoteAccessSession where
  parseJSON =
    withObject
      "RemoteAccessSession"
      ( \x ->
          RemoteAccessSession'
            <$> (x .:? "deviceUdid")
            <*> (x .:? "clientId")
            <*> (x .:? "status")
            <*> (x .:? "result")
            <*> (x .:? "interactionMode")
            <*> (x .:? "started")
            <*> (x .:? "message")
            <*> (x .:? "device")
            <*> (x .:? "arn")
            <*> (x .:? "name")
            <*> (x .:? "instanceArn")
            <*> (x .:? "billingMethod")
            <*> (x .:? "remoteRecordEnabled")
            <*> (x .:? "skipAppResign")
            <*> (x .:? "stopped")
            <*> (x .:? "hostAddress")
            <*> (x .:? "endpoint")
            <*> (x .:? "created")
            <*> (x .:? "remoteDebugEnabled")
            <*> (x .:? "remoteRecordAppArn")
            <*> (x .:? "deviceMinutes")
      )

instance Hashable RemoteAccessSession

instance NFData RemoteAccessSession
