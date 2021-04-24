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
-- Module      : Network.AWS.CognitoSync.GetIdentityPoolConfiguration
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets the configuration settings of an identity pool.
--
--
-- This API can only be called with developer credentials. You cannot call this API with the temporary user credentials provided by Cognito Identity.
module Network.AWS.CognitoSync.GetIdentityPoolConfiguration
  ( -- * Creating a Request
    getIdentityPoolConfiguration,
    GetIdentityPoolConfiguration,

    -- * Request Lenses
    gipcIdentityPoolId,

    -- * Destructuring the Response
    getIdentityPoolConfigurationResponse,
    GetIdentityPoolConfigurationResponse,

    -- * Response Lenses
    gipcrrsIdentityPoolId,
    gipcrrsPushSync,
    gipcrrsCognitoStreams,
    gipcrrsResponseStatus,
  )
where

import Network.AWS.CognitoSync.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | The input for the GetIdentityPoolConfiguration operation.
--
--
--
-- /See:/ 'getIdentityPoolConfiguration' smart constructor.
newtype GetIdentityPoolConfiguration = GetIdentityPoolConfiguration'
  { _gipcIdentityPoolId ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetIdentityPoolConfiguration' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gipcIdentityPoolId' - A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. This is the ID of the pool for which to return a configuration.
getIdentityPoolConfiguration ::
  -- | 'gipcIdentityPoolId'
  Text ->
  GetIdentityPoolConfiguration
getIdentityPoolConfiguration pIdentityPoolId_ =
  GetIdentityPoolConfiguration'
    { _gipcIdentityPoolId =
        pIdentityPoolId_
    }

-- | A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito. This is the ID of the pool for which to return a configuration.
gipcIdentityPoolId :: Lens' GetIdentityPoolConfiguration Text
gipcIdentityPoolId = lens _gipcIdentityPoolId (\s a -> s {_gipcIdentityPoolId = a})

instance AWSRequest GetIdentityPoolConfiguration where
  type
    Rs GetIdentityPoolConfiguration =
      GetIdentityPoolConfigurationResponse
  request = get cognitoSync
  response =
    receiveJSON
      ( \s h x ->
          GetIdentityPoolConfigurationResponse'
            <$> (x .?> "IdentityPoolId")
            <*> (x .?> "PushSync")
            <*> (x .?> "CognitoStreams")
            <*> (pure (fromEnum s))
      )

instance Hashable GetIdentityPoolConfiguration

instance NFData GetIdentityPoolConfiguration

instance ToHeaders GetIdentityPoolConfiguration where
  toHeaders =
    const
      ( mconcat
          [ "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToPath GetIdentityPoolConfiguration where
  toPath GetIdentityPoolConfiguration' {..} =
    mconcat
      [ "/identitypools/",
        toBS _gipcIdentityPoolId,
        "/configuration"
      ]

instance ToQuery GetIdentityPoolConfiguration where
  toQuery = const mempty

-- | The output for the GetIdentityPoolConfiguration operation.
--
--
--
-- /See:/ 'getIdentityPoolConfigurationResponse' smart constructor.
data GetIdentityPoolConfigurationResponse = GetIdentityPoolConfigurationResponse'
  { _gipcrrsIdentityPoolId ::
      !( Maybe
           Text
       ),
    _gipcrrsPushSync ::
      !( Maybe
           PushSync
       ),
    _gipcrrsCognitoStreams ::
      !( Maybe
           CognitoStreams
       ),
    _gipcrrsResponseStatus ::
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

-- | Creates a value of 'GetIdentityPoolConfigurationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gipcrrsIdentityPoolId' - A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito.
--
-- * 'gipcrrsPushSync' - Options to apply to this identity pool for push synchronization.
--
-- * 'gipcrrsCognitoStreams' - Options to apply to this identity pool for Amazon Cognito streams.
--
-- * 'gipcrrsResponseStatus' - -- | The response status code.
getIdentityPoolConfigurationResponse ::
  -- | 'gipcrrsResponseStatus'
  Int ->
  GetIdentityPoolConfigurationResponse
getIdentityPoolConfigurationResponse pResponseStatus_ =
  GetIdentityPoolConfigurationResponse'
    { _gipcrrsIdentityPoolId =
        Nothing,
      _gipcrrsPushSync = Nothing,
      _gipcrrsCognitoStreams = Nothing,
      _gipcrrsResponseStatus =
        pResponseStatus_
    }

-- | A name-spaced GUID (for example, us-east-1:23EC4050-6AEA-7089-A2DD-08002EXAMPLE) created by Amazon Cognito.
gipcrrsIdentityPoolId :: Lens' GetIdentityPoolConfigurationResponse (Maybe Text)
gipcrrsIdentityPoolId = lens _gipcrrsIdentityPoolId (\s a -> s {_gipcrrsIdentityPoolId = a})

-- | Options to apply to this identity pool for push synchronization.
gipcrrsPushSync :: Lens' GetIdentityPoolConfigurationResponse (Maybe PushSync)
gipcrrsPushSync = lens _gipcrrsPushSync (\s a -> s {_gipcrrsPushSync = a})

-- | Options to apply to this identity pool for Amazon Cognito streams.
gipcrrsCognitoStreams :: Lens' GetIdentityPoolConfigurationResponse (Maybe CognitoStreams)
gipcrrsCognitoStreams = lens _gipcrrsCognitoStreams (\s a -> s {_gipcrrsCognitoStreams = a})

-- | -- | The response status code.
gipcrrsResponseStatus :: Lens' GetIdentityPoolConfigurationResponse Int
gipcrrsResponseStatus = lens _gipcrrsResponseStatus (\s a -> s {_gipcrrsResponseStatus = a})

instance NFData GetIdentityPoolConfigurationResponse
