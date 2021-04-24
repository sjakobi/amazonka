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
-- Module      : Network.AWS.CloudWatchEvents.UpdateAPIdestination
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Updates an API destination.
module Network.AWS.CloudWatchEvents.UpdateAPIdestination
  ( -- * Creating a Request
    updateAPIdestination,
    UpdateAPIdestination,

    -- * Request Lenses
    uapiHTTPMethod,
    uapiInvocationEndpoint,
    uapiConnectionARN,
    uapiDescription,
    uapiInvocationRateLimitPerSecond,
    uapiName,

    -- * Destructuring the Response
    updateAPIdestinationResponse,
    UpdateAPIdestinationResponse,

    -- * Response Lenses
    uarrsCreationTime,
    uarrsAPIdestinationARN,
    uarrsAPIdestinationState,
    uarrsLastModifiedTime,
    uarrsResponseStatus,
  )
where

import Network.AWS.CloudWatchEvents.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'updateAPIdestination' smart constructor.
data UpdateAPIdestination = UpdateAPIdestination'
  { _uapiHTTPMethod ::
      !( Maybe
           APIdestinationHTTPMethod
       ),
    _uapiInvocationEndpoint ::
      !(Maybe Text),
    _uapiConnectionARN ::
      !(Maybe Text),
    _uapiDescription ::
      !(Maybe Text),
    _uapiInvocationRateLimitPerSecond ::
      !(Maybe Nat),
    _uapiName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'UpdateAPIdestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uapiHTTPMethod' - The method to use for the API destination.
--
-- * 'uapiInvocationEndpoint' - The URL to the endpoint to use for the API destination.
--
-- * 'uapiConnectionARN' - The ARN of the connection to use for the API destination.
--
-- * 'uapiDescription' - The name of the API destination to update.
--
-- * 'uapiInvocationRateLimitPerSecond' - The maximum number of invocations per second to send to the API destination.
--
-- * 'uapiName' - The name of the API destination to update.
updateAPIdestination ::
  -- | 'uapiName'
  Text ->
  UpdateAPIdestination
updateAPIdestination pName_ =
  UpdateAPIdestination'
    { _uapiHTTPMethod = Nothing,
      _uapiInvocationEndpoint = Nothing,
      _uapiConnectionARN = Nothing,
      _uapiDescription = Nothing,
      _uapiInvocationRateLimitPerSecond = Nothing,
      _uapiName = pName_
    }

-- | The method to use for the API destination.
uapiHTTPMethod :: Lens' UpdateAPIdestination (Maybe APIdestinationHTTPMethod)
uapiHTTPMethod = lens _uapiHTTPMethod (\s a -> s {_uapiHTTPMethod = a})

-- | The URL to the endpoint to use for the API destination.
uapiInvocationEndpoint :: Lens' UpdateAPIdestination (Maybe Text)
uapiInvocationEndpoint = lens _uapiInvocationEndpoint (\s a -> s {_uapiInvocationEndpoint = a})

-- | The ARN of the connection to use for the API destination.
uapiConnectionARN :: Lens' UpdateAPIdestination (Maybe Text)
uapiConnectionARN = lens _uapiConnectionARN (\s a -> s {_uapiConnectionARN = a})

-- | The name of the API destination to update.
uapiDescription :: Lens' UpdateAPIdestination (Maybe Text)
uapiDescription = lens _uapiDescription (\s a -> s {_uapiDescription = a})

-- | The maximum number of invocations per second to send to the API destination.
uapiInvocationRateLimitPerSecond :: Lens' UpdateAPIdestination (Maybe Natural)
uapiInvocationRateLimitPerSecond = lens _uapiInvocationRateLimitPerSecond (\s a -> s {_uapiInvocationRateLimitPerSecond = a}) . mapping _Nat

-- | The name of the API destination to update.
uapiName :: Lens' UpdateAPIdestination Text
uapiName = lens _uapiName (\s a -> s {_uapiName = a})

instance AWSRequest UpdateAPIdestination where
  type
    Rs UpdateAPIdestination =
      UpdateAPIdestinationResponse
  request = postJSON cloudWatchEvents
  response =
    receiveJSON
      ( \s h x ->
          UpdateAPIdestinationResponse'
            <$> (x .?> "CreationTime")
            <*> (x .?> "ApiDestinationArn")
            <*> (x .?> "ApiDestinationState")
            <*> (x .?> "LastModifiedTime")
            <*> (pure (fromEnum s))
      )

instance Hashable UpdateAPIdestination

instance NFData UpdateAPIdestination

instance ToHeaders UpdateAPIdestination where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSEvents.UpdateApiDestination" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON UpdateAPIdestination where
  toJSON UpdateAPIdestination' {..} =
    object
      ( catMaybes
          [ ("HttpMethod" .=) <$> _uapiHTTPMethod,
            ("InvocationEndpoint" .=)
              <$> _uapiInvocationEndpoint,
            ("ConnectionArn" .=) <$> _uapiConnectionARN,
            ("Description" .=) <$> _uapiDescription,
            ("InvocationRateLimitPerSecond" .=)
              <$> _uapiInvocationRateLimitPerSecond,
            Just ("Name" .= _uapiName)
          ]
      )

instance ToPath UpdateAPIdestination where
  toPath = const "/"

instance ToQuery UpdateAPIdestination where
  toQuery = const mempty

-- | /See:/ 'updateAPIdestinationResponse' smart constructor.
data UpdateAPIdestinationResponse = UpdateAPIdestinationResponse'
  { _uarrsCreationTime ::
      !( Maybe
           POSIX
       ),
    _uarrsAPIdestinationARN ::
      !(Maybe Text),
    _uarrsAPIdestinationState ::
      !( Maybe
           APIdestinationState
       ),
    _uarrsLastModifiedTime ::
      !( Maybe
           POSIX
       ),
    _uarrsResponseStatus ::
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

-- | Creates a value of 'UpdateAPIdestinationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'uarrsCreationTime' - A time stamp for the time that the API destination was created.
--
-- * 'uarrsAPIdestinationARN' - The ARN of the API destination that was updated.
--
-- * 'uarrsAPIdestinationState' - The state of the API destination that was updated.
--
-- * 'uarrsLastModifiedTime' - A time stamp for the time that the API destination was last modified.
--
-- * 'uarrsResponseStatus' - -- | The response status code.
updateAPIdestinationResponse ::
  -- | 'uarrsResponseStatus'
  Int ->
  UpdateAPIdestinationResponse
updateAPIdestinationResponse pResponseStatus_ =
  UpdateAPIdestinationResponse'
    { _uarrsCreationTime =
        Nothing,
      _uarrsAPIdestinationARN = Nothing,
      _uarrsAPIdestinationState = Nothing,
      _uarrsLastModifiedTime = Nothing,
      _uarrsResponseStatus = pResponseStatus_
    }

-- | A time stamp for the time that the API destination was created.
uarrsCreationTime :: Lens' UpdateAPIdestinationResponse (Maybe UTCTime)
uarrsCreationTime = lens _uarrsCreationTime (\s a -> s {_uarrsCreationTime = a}) . mapping _Time

-- | The ARN of the API destination that was updated.
uarrsAPIdestinationARN :: Lens' UpdateAPIdestinationResponse (Maybe Text)
uarrsAPIdestinationARN = lens _uarrsAPIdestinationARN (\s a -> s {_uarrsAPIdestinationARN = a})

-- | The state of the API destination that was updated.
uarrsAPIdestinationState :: Lens' UpdateAPIdestinationResponse (Maybe APIdestinationState)
uarrsAPIdestinationState = lens _uarrsAPIdestinationState (\s a -> s {_uarrsAPIdestinationState = a})

-- | A time stamp for the time that the API destination was last modified.
uarrsLastModifiedTime :: Lens' UpdateAPIdestinationResponse (Maybe UTCTime)
uarrsLastModifiedTime = lens _uarrsLastModifiedTime (\s a -> s {_uarrsLastModifiedTime = a}) . mapping _Time

-- | -- | The response status code.
uarrsResponseStatus :: Lens' UpdateAPIdestinationResponse Int
uarrsResponseStatus = lens _uarrsResponseStatus (\s a -> s {_uarrsResponseStatus = a})

instance NFData UpdateAPIdestinationResponse
