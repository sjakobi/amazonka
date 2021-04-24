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
-- Module      : Network.AWS.CognitoSync.SetIdentityPoolConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Sets the necessary configuration for push sync.
--
--
-- This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.
module Network.AWS.CognitoSync.SetIdentityPoolConfiguration
  ( -- * Creating a Request
    setIdentityPoolConfiguration,
    SetIdentityPoolConfiguration,

    -- * Request Lenses
    sipcPushSync,
    sipcCognitoStreams,
    sipcIdentityPoolId,

    -- * Destructuring the Response
    setIdentityPoolConfigurationResponse,
    SetIdentityPoolConfigurationResponse,

    -- * Response Lenses
    sipcrrsIdentityPoolId,
    sipcrrsPushSync,
    sipcrrsCognitoStreams,
    sipcrrsResponseStatus,
  )
where

import Network.AWS.CognitoSync.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input for the SetIdentityPoolConfiguration operation.
--
--
--
-- /See:/ 'setIdentityPoolConfiguration' smart constructor.
data SetIdentityPoolConfiguration = SetIdentityPoolConfiguration'
  { _sipcPushSync ::
      !( Maybe
           PushSync
       ),
    _sipcCognitoStreams ::
      !( Maybe
           CognitoStreams
       ),
    _sipcIdentityPoolId ::
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

-- | Creates a value of 'SetIdentityPoolConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sipcPushSync' - Options to apply to this identity pool for push synchronization.
--
-- * 'sipcCognitoStreams' - Options to apply to this identity pool for Amazon Cognito streams.
--
-- * 'sipcIdentityPoolId' - A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. This is the ID of the pool to modify.
setIdentityPoolConfiguration ::
  -- | 'sipcIdentityPoolId'
  Text ->
  SetIdentityPoolConfiguration
setIdentityPoolConfiguration pIdentityPoolId_ =
  SetIdentityPoolConfiguration'
    { _sipcPushSync =
        Nothing,
      _sipcCognitoStreams = Nothing,
      _sipcIdentityPoolId = pIdentityPoolId_
    }

-- | Options to apply to this identity pool for push synchronization.
sipcPushSync :: Lens' SetIdentityPoolConfiguration (Maybe PushSync)
sipcPushSync = lens _sipcPushSync (\s a -> s {_sipcPushSync = a})

-- | Options to apply to this identity pool for Amazon Cognito streams.
sipcCognitoStreams :: Lens' SetIdentityPoolConfiguration (Maybe CognitoStreams)
sipcCognitoStreams = lens _sipcCognitoStreams (\s a -> s {_sipcCognitoStreams = a})

-- | A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. This is the ID of the pool to modify.
sipcIdentityPoolId :: Lens' SetIdentityPoolConfiguration Text
sipcIdentityPoolId = lens _sipcIdentityPoolId (\s a -> s {_sipcIdentityPoolId = a})

instance AWSRequest SetIdentityPoolConfiguration where
  type
    Rs SetIdentityPoolConfiguration =
      SetIdentityPoolConfigurationResponse
  request = postJSON cognitoSync
  response =
    receiveJSON
      ( \s h x ->
          SetIdentityPoolConfigurationResponse'
            <$> (x .?> "IdentityPoolId")
            <*> (x .?> "PushSync")
            <*> (x .?> "CognitoStreams")
            <*> (pure (fromEnum s))
      )

instance Hashable SetIdentityPoolConfiguration

instance NFData SetIdentityPoolConfiguration

instance ToHeaders SetIdentityPoolConfiguration where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON SetIdentityPoolConfiguration where
  toJSON SetIdentityPoolConfiguration' {..} =
    object
      ( catMaybes
          [ ("PushSync" .=) <$> _sipcPushSync,
            ("CognitoStreams" .=) <$> _sipcCognitoStreams
          ]
      )

instance ToPath SetIdentityPoolConfiguration where
  toPath SetIdentityPoolConfiguration' {..} =
    mconcat
      [ "/identitypools/",
        toBS _sipcIdentityPoolId,
        "/configuration"
      ]

instance ToQuery SetIdentityPoolConfiguration where
  toQuery = const mempty

-- | The output for the SetIdentityPoolConfiguration operation
--
--
--
-- /See:/ 'setIdentityPoolConfigurationResponse' smart constructor.
data SetIdentityPoolConfigurationResponse = SetIdentityPoolConfigurationResponse'
  { _sipcrrsIdentityPoolId ::
      !( Maybe
           Text
       ),
    _sipcrrsPushSync ::
      !( Maybe
           PushSync
       ),
    _sipcrrsCognitoStreams ::
      !( Maybe
           CognitoStreams
       ),
    _sipcrrsResponseStatus ::
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

-- | Creates a value of 'SetIdentityPoolConfigurationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sipcrrsIdentityPoolId' - A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito.
--
-- * 'sipcrrsPushSync' - Options to apply to this identity pool for push synchronization.
--
-- * 'sipcrrsCognitoStreams' - Options to apply to this identity pool for Amazon Cognito streams.
--
-- * 'sipcrrsResponseStatus' - -- | The response status code.
setIdentityPoolConfigurationResponse ::
  -- | 'sipcrrsResponseStatus'
  Int ->
  SetIdentityPoolConfigurationResponse
setIdentityPoolConfigurationResponse pResponseStatus_ =
  SetIdentityPoolConfigurationResponse'
    { _sipcrrsIdentityPoolId =
        Nothing,
      _sipcrrsPushSync = Nothing,
      _sipcrrsCognitoStreams = Nothing,
      _sipcrrsResponseStatus =
        pResponseStatus_
    }

-- | A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito.
sipcrrsIdentityPoolId :: Lens' SetIdentityPoolConfigurationResponse (Maybe Text)
sipcrrsIdentityPoolId = lens _sipcrrsIdentityPoolId (\s a -> s {_sipcrrsIdentityPoolId = a})

-- | Options to apply to this identity pool for push synchronization.
sipcrrsPushSync :: Lens' SetIdentityPoolConfigurationResponse (Maybe PushSync)
sipcrrsPushSync = lens _sipcrrsPushSync (\s a -> s {_sipcrrsPushSync = a})

-- | Options to apply to this identity pool for Amazon Cognito streams.
sipcrrsCognitoStreams :: Lens' SetIdentityPoolConfigurationResponse (Maybe CognitoStreams)
sipcrrsCognitoStreams = lens _sipcrrsCognitoStreams (\s a -> s {_sipcrrsCognitoStreams = a})

-- | -- | The response status code.
sipcrrsResponseStatus :: Lens' SetIdentityPoolConfigurationResponse Int
sipcrrsResponseStatus = lens _sipcrrsResponseStatus (\s a -> s {_sipcrrsResponseStatus = a})

instance NFData SetIdentityPoolConfigurationResponse
