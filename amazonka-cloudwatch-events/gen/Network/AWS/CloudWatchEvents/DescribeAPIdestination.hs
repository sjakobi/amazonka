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
-- Module      : Network.AWS.CloudWatchEvents.DescribeAPIdestination
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves details about an API destination.
module Network.AWS.CloudWatchEvents.DescribeAPIdestination
  ( -- * Creating a Request
    describeAPIdestination,
    DescribeAPIdestination,

    -- * Request Lenses
    daName,

    -- * Destructuring the Response
    describeAPIdestinationResponse,
    DescribeAPIdestinationResponse,

    -- * Response Lenses
    dararsHTTPMethod,
    dararsCreationTime,
    dararsAPIdestinationARN,
    dararsInvocationEndpoint,
    dararsAPIdestinationState,
    dararsConnectionARN,
    dararsName,
    dararsLastModifiedTime,
    dararsDescription,
    dararsInvocationRateLimitPerSecond,
    dararsResponseStatus,
  )
where

import Network.AWS.CloudWatchEvents.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeAPIdestination' smart constructor.
newtype DescribeAPIdestination = DescribeAPIdestination'
  { _daName ::
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

-- | Creates a value of 'DescribeAPIdestination' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daName' - The name of the API destination to retrieve.
describeAPIdestination ::
  -- | 'daName'
  Text ->
  DescribeAPIdestination
describeAPIdestination pName_ =
  DescribeAPIdestination' {_daName = pName_}

-- | The name of the API destination to retrieve.
daName :: Lens' DescribeAPIdestination Text
daName = lens _daName (\s a -> s {_daName = a})

instance AWSRequest DescribeAPIdestination where
  type
    Rs DescribeAPIdestination =
      DescribeAPIdestinationResponse
  request = postJSON cloudWatchEvents
  response =
    receiveJSON
      ( \s h x ->
          DescribeAPIdestinationResponse'
            <$> (x .?> "HttpMethod")
            <*> (x .?> "CreationTime")
            <*> (x .?> "ApiDestinationArn")
            <*> (x .?> "InvocationEndpoint")
            <*> (x .?> "ApiDestinationState")
            <*> (x .?> "ConnectionArn")
            <*> (x .?> "Name")
            <*> (x .?> "LastModifiedTime")
            <*> (x .?> "Description")
            <*> (x .?> "InvocationRateLimitPerSecond")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeAPIdestination

instance NFData DescribeAPIdestination

instance ToHeaders DescribeAPIdestination where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSEvents.DescribeApiDestination" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeAPIdestination where
  toJSON DescribeAPIdestination' {..} =
    object (catMaybes [Just ("Name" .= _daName)])

instance ToPath DescribeAPIdestination where
  toPath = const "/"

instance ToQuery DescribeAPIdestination where
  toQuery = const mempty

-- | /See:/ 'describeAPIdestinationResponse' smart constructor.
data DescribeAPIdestinationResponse = DescribeAPIdestinationResponse'
  { _dararsHTTPMethod ::
      !( Maybe
           APIdestinationHTTPMethod
       ),
    _dararsCreationTime ::
      !( Maybe
           POSIX
       ),
    _dararsAPIdestinationARN ::
      !( Maybe
           Text
       ),
    _dararsInvocationEndpoint ::
      !( Maybe
           Text
       ),
    _dararsAPIdestinationState ::
      !( Maybe
           APIdestinationState
       ),
    _dararsConnectionARN ::
      !( Maybe
           Text
       ),
    _dararsName ::
      !( Maybe
           Text
       ),
    _dararsLastModifiedTime ::
      !( Maybe
           POSIX
       ),
    _dararsDescription ::
      !( Maybe
           Text
       ),
    _dararsInvocationRateLimitPerSecond ::
      !( Maybe
           Nat
       ),
    _dararsResponseStatus ::
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

-- | Creates a value of 'DescribeAPIdestinationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dararsHTTPMethod' - The method to use to connect to the HTTP endpoint.
--
-- * 'dararsCreationTime' - A time stamp for the time that the API destination was created.
--
-- * 'dararsAPIdestinationARN' - The ARN of the API destination retrieved.
--
-- * 'dararsInvocationEndpoint' - The URL to use to connect to the HTTP endpoint.
--
-- * 'dararsAPIdestinationState' - The state of the API destination retrieved.
--
-- * 'dararsConnectionARN' - The ARN of the connection specified for the API destination retrieved.
--
-- * 'dararsName' - The name of the API destination retrieved.
--
-- * 'dararsLastModifiedTime' - A time stamp for the time that the API destination was last modified.
--
-- * 'dararsDescription' - The description for the API destination retrieved.
--
-- * 'dararsInvocationRateLimitPerSecond' - The maximum number of invocations per second to specified for the API destination. Note that if you set the invocation rate maximum to a value lower the rate necessary to send all events received on to the destination HTTP endpoint, some events may not be delivered within the 24-hour retry window. If you plan to set the rate lower than the rate necessary to deliver all events, consider using a dead-letter queue to catch events that are not delivered within 24 hours.
--
-- * 'dararsResponseStatus' - -- | The response status code.
describeAPIdestinationResponse ::
  -- | 'dararsResponseStatus'
  Int ->
  DescribeAPIdestinationResponse
describeAPIdestinationResponse pResponseStatus_ =
  DescribeAPIdestinationResponse'
    { _dararsHTTPMethod =
        Nothing,
      _dararsCreationTime = Nothing,
      _dararsAPIdestinationARN = Nothing,
      _dararsInvocationEndpoint = Nothing,
      _dararsAPIdestinationState = Nothing,
      _dararsConnectionARN = Nothing,
      _dararsName = Nothing,
      _dararsLastModifiedTime = Nothing,
      _dararsDescription = Nothing,
      _dararsInvocationRateLimitPerSecond =
        Nothing,
      _dararsResponseStatus = pResponseStatus_
    }

-- | The method to use to connect to the HTTP endpoint.
dararsHTTPMethod :: Lens' DescribeAPIdestinationResponse (Maybe APIdestinationHTTPMethod)
dararsHTTPMethod = lens _dararsHTTPMethod (\s a -> s {_dararsHTTPMethod = a})

-- | A time stamp for the time that the API destination was created.
dararsCreationTime :: Lens' DescribeAPIdestinationResponse (Maybe UTCTime)
dararsCreationTime = lens _dararsCreationTime (\s a -> s {_dararsCreationTime = a}) . mapping _Time

-- | The ARN of the API destination retrieved.
dararsAPIdestinationARN :: Lens' DescribeAPIdestinationResponse (Maybe Text)
dararsAPIdestinationARN = lens _dararsAPIdestinationARN (\s a -> s {_dararsAPIdestinationARN = a})

-- | The URL to use to connect to the HTTP endpoint.
dararsInvocationEndpoint :: Lens' DescribeAPIdestinationResponse (Maybe Text)
dararsInvocationEndpoint = lens _dararsInvocationEndpoint (\s a -> s {_dararsInvocationEndpoint = a})

-- | The state of the API destination retrieved.
dararsAPIdestinationState :: Lens' DescribeAPIdestinationResponse (Maybe APIdestinationState)
dararsAPIdestinationState = lens _dararsAPIdestinationState (\s a -> s {_dararsAPIdestinationState = a})

-- | The ARN of the connection specified for the API destination retrieved.
dararsConnectionARN :: Lens' DescribeAPIdestinationResponse (Maybe Text)
dararsConnectionARN = lens _dararsConnectionARN (\s a -> s {_dararsConnectionARN = a})

-- | The name of the API destination retrieved.
dararsName :: Lens' DescribeAPIdestinationResponse (Maybe Text)
dararsName = lens _dararsName (\s a -> s {_dararsName = a})

-- | A time stamp for the time that the API destination was last modified.
dararsLastModifiedTime :: Lens' DescribeAPIdestinationResponse (Maybe UTCTime)
dararsLastModifiedTime = lens _dararsLastModifiedTime (\s a -> s {_dararsLastModifiedTime = a}) . mapping _Time

-- | The description for the API destination retrieved.
dararsDescription :: Lens' DescribeAPIdestinationResponse (Maybe Text)
dararsDescription = lens _dararsDescription (\s a -> s {_dararsDescription = a})

-- | The maximum number of invocations per second to specified for the API destination. Note that if you set the invocation rate maximum to a value lower the rate necessary to send all events received on to the destination HTTP endpoint, some events may not be delivered within the 24-hour retry window. If you plan to set the rate lower than the rate necessary to deliver all events, consider using a dead-letter queue to catch events that are not delivered within 24 hours.
dararsInvocationRateLimitPerSecond :: Lens' DescribeAPIdestinationResponse (Maybe Natural)
dararsInvocationRateLimitPerSecond = lens _dararsInvocationRateLimitPerSecond (\s a -> s {_dararsInvocationRateLimitPerSecond = a}) . mapping _Nat

-- | -- | The response status code.
dararsResponseStatus :: Lens' DescribeAPIdestinationResponse Int
dararsResponseStatus = lens _dararsResponseStatus (\s a -> s {_dararsResponseStatus = a})

instance NFData DescribeAPIdestinationResponse
