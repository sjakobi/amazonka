{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TypeFamilies #-}
{-# OPTIONS_GHC -fno-warn-unused-binds #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}
{-# OPTIONS_GHC -fno-warn-unused-matches #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DeviceFarm.CreateRemoteAccessSession
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Specifies and starts a remote access session.
module Network.AWS.DeviceFarm.CreateRemoteAccessSession
  ( -- * Creating a Request
    createRemoteAccessSession,
    CreateRemoteAccessSession,

    -- * Request Lenses
    crasClientId,
    crasInteractionMode,
    crasConfiguration,
    crasName,
    crasInstanceARN,
    crasRemoteRecordEnabled,
    crasSkipAppResign,
    crasSshPublicKey,
    crasRemoteDebugEnabled,
    crasRemoteRecordAppARN,
    crasProjectARN,
    crasDeviceARN,

    -- * Destructuring the Response
    createRemoteAccessSessionResponse,
    CreateRemoteAccessSessionResponse,

    -- * Response Lenses
    crasrrsRemoteAccessSession,
    crasrrsResponseStatus,
  )
where

import Network.AWS.DeviceFarm.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Creates and submits a request to start a remote access session.
--
--
--
-- /See:/ 'createRemoteAccessSession' smart constructor.
data CreateRemoteAccessSession = CreateRemoteAccessSession'
  { _crasClientId ::
      !(Maybe Text),
    _crasInteractionMode ::
      !( Maybe
           InteractionMode
       ),
    _crasConfiguration ::
      !( Maybe
           CreateRemoteAccessSessionConfiguration
       ),
    _crasName ::
      !(Maybe Text),
    _crasInstanceARN ::
      !(Maybe Text),
    _crasRemoteRecordEnabled ::
      !(Maybe Bool),
    _crasSkipAppResign ::
      !(Maybe Bool),
    _crasSshPublicKey ::
      !(Maybe Text),
    _crasRemoteDebugEnabled ::
      !(Maybe Bool),
    _crasRemoteRecordAppARN ::
      !(Maybe Text),
    _crasProjectARN ::
      !Text,
    _crasDeviceARN ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateRemoteAccessSession' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crasClientId' - Unique identifier for the client. If you want access to multiple devices on the same client, you should pass the same @clientId@ value in each call to @CreateRemoteAccessSession@ . This identifier is required only if @remoteDebugEnabled@ is set to @true@ . Remote debugging is <https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html no longer supported> .
--
-- * 'crasInteractionMode' - The interaction mode of the remote access session. Valid values are:     * INTERACTIVE: You can interact with the iOS device by viewing, touching, and rotating the screen. You cannot run XCUITest framework-based tests in this mode.     * NO_VIDEO: You are connected to the device, but cannot interact with it or view the screen. This mode has the fastest test execution speed. You can run XCUITest framework-based tests in this mode.     * VIDEO_ONLY: You can view the screen, but cannot touch or rotate it. You can run XCUITest framework-based tests and watch the screen in this mode.
--
-- * 'crasConfiguration' - The configuration information for the remote access session request.
--
-- * 'crasName' - The name of the remote access session to create.
--
-- * 'crasInstanceARN' - The Amazon Resource Name (ARN) of the device instance for which you want to create a remote access session.
--
-- * 'crasRemoteRecordEnabled' - Set to @true@ to enable remote recording for the remote access session.
--
-- * 'crasSkipAppResign' - When set to @true@ , for private devices, Device Farm does not sign your app again. For public devices, Device Farm always signs your apps again. For more information on how Device Farm modifies your uploads during tests, see <https://aws.amazon.com/device-farm/faq/ Do you modify my app?>
--
-- * 'crasSshPublicKey' - Ignored. The public key of the @ssh@ key pair you want to use for connecting to remote devices in your remote debugging session. This key is required only if @remoteDebugEnabled@ is set to @true@ . Remote debugging is <https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html no longer supported> .
--
-- * 'crasRemoteDebugEnabled' - Set to @true@ if you want to access devices remotely for debugging in your remote access session. Remote debugging is <https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html no longer supported> .
--
-- * 'crasRemoteRecordAppARN' - The Amazon Resource Name (ARN) for the app to be recorded in the remote access session.
--
-- * 'crasProjectARN' - The Amazon Resource Name (ARN) of the project for which you want to create a remote access session.
--
-- * 'crasDeviceARN' - The ARN of the device for which you want to create a remote access session.
createRemoteAccessSession ::
  -- | 'crasProjectARN'
  Text ->
  -- | 'crasDeviceARN'
  Text ->
  CreateRemoteAccessSession
createRemoteAccessSession pProjectARN_ pDeviceARN_ =
  CreateRemoteAccessSession'
    { _crasClientId = Nothing,
      _crasInteractionMode = Nothing,
      _crasConfiguration = Nothing,
      _crasName = Nothing,
      _crasInstanceARN = Nothing,
      _crasRemoteRecordEnabled = Nothing,
      _crasSkipAppResign = Nothing,
      _crasSshPublicKey = Nothing,
      _crasRemoteDebugEnabled = Nothing,
      _crasRemoteRecordAppARN = Nothing,
      _crasProjectARN = pProjectARN_,
      _crasDeviceARN = pDeviceARN_
    }

-- | Unique identifier for the client. If you want access to multiple devices on the same client, you should pass the same @clientId@ value in each call to @CreateRemoteAccessSession@ . This identifier is required only if @remoteDebugEnabled@ is set to @true@ . Remote debugging is <https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html no longer supported> .
crasClientId :: Lens' CreateRemoteAccessSession (Maybe Text)
crasClientId = lens _crasClientId (\s a -> s {_crasClientId = a})

-- | The interaction mode of the remote access session. Valid values are:     * INTERACTIVE: You can interact with the iOS device by viewing, touching, and rotating the screen. You cannot run XCUITest framework-based tests in this mode.     * NO_VIDEO: You are connected to the device, but cannot interact with it or view the screen. This mode has the fastest test execution speed. You can run XCUITest framework-based tests in this mode.     * VIDEO_ONLY: You can view the screen, but cannot touch or rotate it. You can run XCUITest framework-based tests and watch the screen in this mode.
crasInteractionMode :: Lens' CreateRemoteAccessSession (Maybe InteractionMode)
crasInteractionMode = lens _crasInteractionMode (\s a -> s {_crasInteractionMode = a})

-- | The configuration information for the remote access session request.
crasConfiguration :: Lens' CreateRemoteAccessSession (Maybe CreateRemoteAccessSessionConfiguration)
crasConfiguration = lens _crasConfiguration (\s a -> s {_crasConfiguration = a})

-- | The name of the remote access session to create.
crasName :: Lens' CreateRemoteAccessSession (Maybe Text)
crasName = lens _crasName (\s a -> s {_crasName = a})

-- | The Amazon Resource Name (ARN) of the device instance for which you want to create a remote access session.
crasInstanceARN :: Lens' CreateRemoteAccessSession (Maybe Text)
crasInstanceARN = lens _crasInstanceARN (\s a -> s {_crasInstanceARN = a})

-- | Set to @true@ to enable remote recording for the remote access session.
crasRemoteRecordEnabled :: Lens' CreateRemoteAccessSession (Maybe Bool)
crasRemoteRecordEnabled = lens _crasRemoteRecordEnabled (\s a -> s {_crasRemoteRecordEnabled = a})

-- | When set to @true@ , for private devices, Device Farm does not sign your app again. For public devices, Device Farm always signs your apps again. For more information on how Device Farm modifies your uploads during tests, see <https://aws.amazon.com/device-farm/faq/ Do you modify my app?>
crasSkipAppResign :: Lens' CreateRemoteAccessSession (Maybe Bool)
crasSkipAppResign = lens _crasSkipAppResign (\s a -> s {_crasSkipAppResign = a})

-- | Ignored. The public key of the @ssh@ key pair you want to use for connecting to remote devices in your remote debugging session. This key is required only if @remoteDebugEnabled@ is set to @true@ . Remote debugging is <https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html no longer supported> .
crasSshPublicKey :: Lens' CreateRemoteAccessSession (Maybe Text)
crasSshPublicKey = lens _crasSshPublicKey (\s a -> s {_crasSshPublicKey = a})

-- | Set to @true@ if you want to access devices remotely for debugging in your remote access session. Remote debugging is <https://docs.aws.amazon.com/devicefarm/latest/developerguide/history.html no longer supported> .
crasRemoteDebugEnabled :: Lens' CreateRemoteAccessSession (Maybe Bool)
crasRemoteDebugEnabled = lens _crasRemoteDebugEnabled (\s a -> s {_crasRemoteDebugEnabled = a})

-- | The Amazon Resource Name (ARN) for the app to be recorded in the remote access session.
crasRemoteRecordAppARN :: Lens' CreateRemoteAccessSession (Maybe Text)
crasRemoteRecordAppARN = lens _crasRemoteRecordAppARN (\s a -> s {_crasRemoteRecordAppARN = a})

-- | The Amazon Resource Name (ARN) of the project for which you want to create a remote access session.
crasProjectARN :: Lens' CreateRemoteAccessSession Text
crasProjectARN = lens _crasProjectARN (\s a -> s {_crasProjectARN = a})

-- | The ARN of the device for which you want to create a remote access session.
crasDeviceARN :: Lens' CreateRemoteAccessSession Text
crasDeviceARN = lens _crasDeviceARN (\s a -> s {_crasDeviceARN = a})

instance AWSRequest CreateRemoteAccessSession where
  type
    Rs CreateRemoteAccessSession =
      CreateRemoteAccessSessionResponse
  request = postJSON deviceFarm
  response =
    receiveJSON
      ( \s h x ->
          CreateRemoteAccessSessionResponse'
            <$> (x .?> "remoteAccessSession")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateRemoteAccessSession

instance NFData CreateRemoteAccessSession

instance ToHeaders CreateRemoteAccessSession where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DeviceFarm_20150623.CreateRemoteAccessSession" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateRemoteAccessSession where
  toJSON CreateRemoteAccessSession' {..} =
    object
      ( catMaybes
          [ ("clientId" .=) <$> _crasClientId,
            ("interactionMode" .=) <$> _crasInteractionMode,
            ("configuration" .=) <$> _crasConfiguration,
            ("name" .=) <$> _crasName,
            ("instanceArn" .=) <$> _crasInstanceARN,
            ("remoteRecordEnabled" .=)
              <$> _crasRemoteRecordEnabled,
            ("skipAppResign" .=) <$> _crasSkipAppResign,
            ("sshPublicKey" .=) <$> _crasSshPublicKey,
            ("remoteDebugEnabled" .=)
              <$> _crasRemoteDebugEnabled,
            ("remoteRecordAppArn" .=)
              <$> _crasRemoteRecordAppARN,
            Just ("projectArn" .= _crasProjectARN),
            Just ("deviceArn" .= _crasDeviceARN)
          ]
      )

instance ToPath CreateRemoteAccessSession where
  toPath = const "/"

instance ToQuery CreateRemoteAccessSession where
  toQuery = const mempty

-- | Represents the server response from a request to create a remote access session.
--
--
--
-- /See:/ 'createRemoteAccessSessionResponse' smart constructor.
data CreateRemoteAccessSessionResponse = CreateRemoteAccessSessionResponse'
  { _crasrrsRemoteAccessSession ::
      !( Maybe
           RemoteAccessSession
       ),
    _crasrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreateRemoteAccessSessionResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'crasrrsRemoteAccessSession' - A container that describes the remote access session when the request to create a remote access session is sent.
--
-- * 'crasrrsResponseStatus' - -- | The response status code.
createRemoteAccessSessionResponse ::
  -- | 'crasrrsResponseStatus'
  Int ->
  CreateRemoteAccessSessionResponse
createRemoteAccessSessionResponse pResponseStatus_ =
  CreateRemoteAccessSessionResponse'
    { _crasrrsRemoteAccessSession =
        Nothing,
      _crasrrsResponseStatus =
        pResponseStatus_
    }

-- | A container that describes the remote access session when the request to create a remote access session is sent.
crasrrsRemoteAccessSession :: Lens' CreateRemoteAccessSessionResponse (Maybe RemoteAccessSession)
crasrrsRemoteAccessSession = lens _crasrrsRemoteAccessSession (\s a -> s {_crasrrsRemoteAccessSession = a})

-- | -- | The response status code.
crasrrsResponseStatus :: Lens' CreateRemoteAccessSessionResponse Int
crasrrsResponseStatus = lens _crasrrsResponseStatus (\s a -> s {_crasrrsResponseStatus = a})

instance NFData CreateRemoteAccessSessionResponse
