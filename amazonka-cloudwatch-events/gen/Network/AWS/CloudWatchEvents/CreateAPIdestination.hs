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
-- Module      : Network.AWS.CloudWatchEvents.CreateAPIdestination
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates an API destination, which is an HTTP invocation endpoint configured as a target for events.
module Network.AWS.CloudWatchEvents.CreateAPIdestination
  ( -- * Creating a Request
    createAPIdestination,
    CreateAPIdestination,

    -- * Request Lenses
    caDescription,
    caInvocationRateLimitPerSecond,
    caName,
    caConnectionARN,
    caInvocationEndpoint,
    caHTTPMethod,

    -- * Destructuring the Response
    createAPIdestinationResponse,
    CreateAPIdestinationResponse,

    -- * Response Lenses
    carrsCreationTime,
    carrsAPIdestinationARN,
    carrsAPIdestinationState,
    carrsLastModifiedTime,
    carrsResponseStatus,
  )
where

import Network.AWS.CloudWatchEvents.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createAPIdestination' smart constructor.
data CreateAPIdestination = CreateAPIdestination'
  { _caDescription ::
      !(Maybe Text),
    _caInvocationRateLimitPerSecond ::
      !(Maybe Nat),
    _caName :: !Text,
    _caConnectionARN :: !Text,
    _caInvocationEndpoint ::
      !Text,
    _caHTTPMethod ::
      !APIdestinationHTTPMethod
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateAPIdestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'caDescription' - A description for the API destination to create.
--
-- * 'caInvocationRateLimitPerSecond' - The maximum number of requests per second to send to the HTTP invocation endpoint.
--
-- * 'caName' - The name for the API destination to create.
--
-- * 'caConnectionARN' - The ARN of the connection to use for the API destination. The destination endpoint must support the authorization type specified for the connection.
--
-- * 'caInvocationEndpoint' - The URL to the HTTP invocation endpoint for the API destination.
--
-- * 'caHTTPMethod' - The method to use for the request to the HTTP invocation endpoint.
createAPIdestination ::
  -- | 'caName'
  Text ->
  -- | 'caConnectionARN'
  Text ->
  -- | 'caInvocationEndpoint'
  Text ->
  -- | 'caHTTPMethod'
  APIdestinationHTTPMethod ->
  CreateAPIdestination
createAPIdestination
  pName_
  pConnectionARN_
  pInvocationEndpoint_
  pHTTPMethod_ =
    CreateAPIdestination'
      { _caDescription = Nothing,
        _caInvocationRateLimitPerSecond = Nothing,
        _caName = pName_,
        _caConnectionARN = pConnectionARN_,
        _caInvocationEndpoint = pInvocationEndpoint_,
        _caHTTPMethod = pHTTPMethod_
      }

-- | A description for the API destination to create.
caDescription :: Lens' CreateAPIdestination (Maybe Text)
caDescription = lens _caDescription (\s a -> s {_caDescription = a})

-- | The maximum number of requests per second to send to the HTTP invocation endpoint.
caInvocationRateLimitPerSecond :: Lens' CreateAPIdestination (Maybe Natural)
caInvocationRateLimitPerSecond = lens _caInvocationRateLimitPerSecond (\s a -> s {_caInvocationRateLimitPerSecond = a}) . mapping _Nat

-- | The name for the API destination to create.
caName :: Lens' CreateAPIdestination Text
caName = lens _caName (\s a -> s {_caName = a})

-- | The ARN of the connection to use for the API destination. The destination endpoint must support the authorization type specified for the connection.
caConnectionARN :: Lens' CreateAPIdestination Text
caConnectionARN = lens _caConnectionARN (\s a -> s {_caConnectionARN = a})

-- | The URL to the HTTP invocation endpoint for the API destination.
caInvocationEndpoint :: Lens' CreateAPIdestination Text
caInvocationEndpoint = lens _caInvocationEndpoint (\s a -> s {_caInvocationEndpoint = a})

-- | The method to use for the request to the HTTP invocation endpoint.
caHTTPMethod :: Lens' CreateAPIdestination APIdestinationHTTPMethod
caHTTPMethod = lens _caHTTPMethod (\s a -> s {_caHTTPMethod = a})

instance AWSRequest CreateAPIdestination where
  type
    Rs CreateAPIdestination =
      CreateAPIdestinationResponse
  request = postJSON cloudWatchEvents
  response =
    receiveJSON
      ( \s h x ->
          CreateAPIdestinationResponse'
            <$> (x .?> "CreationTime")
            <*> (x .?> "ApiDestinationArn")
            <*> (x .?> "ApiDestinationState")
            <*> (x .?> "LastModifiedTime")
            <*> (pure (fromEnum s))
      )

instance Hashable CreateAPIdestination

instance NFData CreateAPIdestination

instance ToHeaders CreateAPIdestination where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSEvents.CreateApiDestination" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateAPIdestination where
  toJSON CreateAPIdestination' {..} =
    object
      ( catMaybes
          [ ("Description" .=) <$> _caDescription,
            ("InvocationRateLimitPerSecond" .=)
              <$> _caInvocationRateLimitPerSecond,
            Just ("Name" .= _caName),
            Just ("ConnectionArn" .= _caConnectionARN),
            Just ("InvocationEndpoint" .= _caInvocationEndpoint),
            Just ("HttpMethod" .= _caHTTPMethod)
          ]
      )

instance ToPath CreateAPIdestination where
  toPath = const "/"

instance ToQuery CreateAPIdestination where
  toQuery = const mempty

-- | /See:/ 'createAPIdestinationResponse' smart constructor.
data CreateAPIdestinationResponse = CreateAPIdestinationResponse'
  { _carrsCreationTime ::
      !( Maybe
           POSIX
       ),
    _carrsAPIdestinationARN ::
      !(Maybe Text),
    _carrsAPIdestinationState ::
      !( Maybe
           APIdestinationState
       ),
    _carrsLastModifiedTime ::
      !( Maybe
           POSIX
       ),
    _carrsResponseStatus ::
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

-- | Creates a value of 'CreateAPIdestinationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'carrsCreationTime' - A time stamp indicating the time that the API destination was created.
--
-- * 'carrsAPIdestinationARN' - The ARN of the API destination that was created by the request.
--
-- * 'carrsAPIdestinationState' - The state of the API destination that was created by the request.
--
-- * 'carrsLastModifiedTime' - A time stamp indicating the time that the API destination was last modified.
--
-- * 'carrsResponseStatus' - -- | The response status code.
createAPIdestinationResponse ::
  -- | 'carrsResponseStatus'
  Int ->
  CreateAPIdestinationResponse
createAPIdestinationResponse pResponseStatus_ =
  CreateAPIdestinationResponse'
    { _carrsCreationTime =
        Nothing,
      _carrsAPIdestinationARN = Nothing,
      _carrsAPIdestinationState = Nothing,
      _carrsLastModifiedTime = Nothing,
      _carrsResponseStatus = pResponseStatus_
    }

-- | A time stamp indicating the time that the API destination was created.
carrsCreationTime :: Lens' CreateAPIdestinationResponse (Maybe UTCTime)
carrsCreationTime = lens _carrsCreationTime (\s a -> s {_carrsCreationTime = a}) . mapping _Time

-- | The ARN of the API destination that was created by the request.
carrsAPIdestinationARN :: Lens' CreateAPIdestinationResponse (Maybe Text)
carrsAPIdestinationARN = lens _carrsAPIdestinationARN (\s a -> s {_carrsAPIdestinationARN = a})

-- | The state of the API destination that was created by the request.
carrsAPIdestinationState :: Lens' CreateAPIdestinationResponse (Maybe APIdestinationState)
carrsAPIdestinationState = lens _carrsAPIdestinationState (\s a -> s {_carrsAPIdestinationState = a})

-- | A time stamp indicating the time that the API destination was last modified.
carrsLastModifiedTime :: Lens' CreateAPIdestinationResponse (Maybe UTCTime)
carrsLastModifiedTime = lens _carrsLastModifiedTime (\s a -> s {_carrsLastModifiedTime = a}) . mapping _Time

-- | -- | The response status code.
carrsResponseStatus :: Lens' CreateAPIdestinationResponse Int
carrsResponseStatus = lens _carrsResponseStatus (\s a -> s {_carrsResponseStatus = a})

instance NFData CreateAPIdestinationResponse
