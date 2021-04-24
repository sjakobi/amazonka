{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.Types.APIdestination
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.APIdestination where

import Network.AWS.CloudWatchEvents.Types.APIdestinationHTTPMethod
import Network.AWS.CloudWatchEvents.Types.APIdestinationState
import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains details about an API destination.
--
--
--
-- /See:/ 'apidestination' smart constructor.
data APIdestination = APIdestination'
  { _apiHTTPMethod ::
      !(Maybe APIdestinationHTTPMethod),
    _apiCreationTime :: !(Maybe POSIX),
    _apiAPIdestinationARN :: !(Maybe Text),
    _apiInvocationEndpoint :: !(Maybe Text),
    _apiAPIdestinationState ::
      !(Maybe APIdestinationState),
    _apiConnectionARN :: !(Maybe Text),
    _apiName :: !(Maybe Text),
    _apiLastModifiedTime :: !(Maybe POSIX),
    _apiInvocationRateLimitPerSecond ::
      !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'APIdestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'apiHTTPMethod' - The method to use to connect to the HTTP endpoint.
--
-- * 'apiCreationTime' - A time stamp for the time that the API destination was created.
--
-- * 'apiAPIdestinationARN' - The ARN of the API destination.
--
-- * 'apiInvocationEndpoint' - The URL to the endpoint for the API destination.
--
-- * 'apiAPIdestinationState' - The state of the API destination.
--
-- * 'apiConnectionARN' - The ARN of the connection specified for the API destination.
--
-- * 'apiName' - The name of the API destination.
--
-- * 'apiLastModifiedTime' - A time stamp for the time that the API destination was last modified.
--
-- * 'apiInvocationRateLimitPerSecond' - The maximum number of invocations per second to send to the HTTP endpoint.
apidestination ::
  APIdestination
apidestination =
  APIdestination'
    { _apiHTTPMethod = Nothing,
      _apiCreationTime = Nothing,
      _apiAPIdestinationARN = Nothing,
      _apiInvocationEndpoint = Nothing,
      _apiAPIdestinationState = Nothing,
      _apiConnectionARN = Nothing,
      _apiName = Nothing,
      _apiLastModifiedTime = Nothing,
      _apiInvocationRateLimitPerSecond = Nothing
    }

-- | The method to use to connect to the HTTP endpoint.
apiHTTPMethod :: Lens' APIdestination (Maybe APIdestinationHTTPMethod)
apiHTTPMethod = lens _apiHTTPMethod (\s a -> s {_apiHTTPMethod = a})

-- | A time stamp for the time that the API destination was created.
apiCreationTime :: Lens' APIdestination (Maybe UTCTime)
apiCreationTime = lens _apiCreationTime (\s a -> s {_apiCreationTime = a}) . mapping _Time

-- | The ARN of the API destination.
apiAPIdestinationARN :: Lens' APIdestination (Maybe Text)
apiAPIdestinationARN = lens _apiAPIdestinationARN (\s a -> s {_apiAPIdestinationARN = a})

-- | The URL to the endpoint for the API destination.
apiInvocationEndpoint :: Lens' APIdestination (Maybe Text)
apiInvocationEndpoint = lens _apiInvocationEndpoint (\s a -> s {_apiInvocationEndpoint = a})

-- | The state of the API destination.
apiAPIdestinationState :: Lens' APIdestination (Maybe APIdestinationState)
apiAPIdestinationState = lens _apiAPIdestinationState (\s a -> s {_apiAPIdestinationState = a})

-- | The ARN of the connection specified for the API destination.
apiConnectionARN :: Lens' APIdestination (Maybe Text)
apiConnectionARN = lens _apiConnectionARN (\s a -> s {_apiConnectionARN = a})

-- | The name of the API destination.
apiName :: Lens' APIdestination (Maybe Text)
apiName = lens _apiName (\s a -> s {_apiName = a})

-- | A time stamp for the time that the API destination was last modified.
apiLastModifiedTime :: Lens' APIdestination (Maybe UTCTime)
apiLastModifiedTime = lens _apiLastModifiedTime (\s a -> s {_apiLastModifiedTime = a}) . mapping _Time

-- | The maximum number of invocations per second to send to the HTTP endpoint.
apiInvocationRateLimitPerSecond :: Lens' APIdestination (Maybe Natural)
apiInvocationRateLimitPerSecond = lens _apiInvocationRateLimitPerSecond (\s a -> s {_apiInvocationRateLimitPerSecond = a}) . mapping _Nat

instance FromJSON APIdestination where
  parseJSON =
    withObject
      "APIdestination"
      ( \x ->
          APIdestination'
            <$> (x .:? "HttpMethod")
            <*> (x .:? "CreationTime")
            <*> (x .:? "ApiDestinationArn")
            <*> (x .:? "InvocationEndpoint")
            <*> (x .:? "ApiDestinationState")
            <*> (x .:? "ConnectionArn")
            <*> (x .:? "Name")
            <*> (x .:? "LastModifiedTime")
            <*> (x .:? "InvocationRateLimitPerSecond")
      )

instance Hashable APIdestination

instance NFData APIdestination
