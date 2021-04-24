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
-- Module      : Network.AWS.CloudTrail.GetEventSelectors
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Describes the settings for the event selectors that you configured for your trail. The information returned for your event selectors includes the following:
--
--
--     * If your event selector includes read-only events, write-only events, or all events. This applies to both management events and data events.
--
--     * If your event selector includes management events.
--
--     * If your event selector includes data events, the Amazon S3 objects or AWS Lambda functions that you are logging for data events.
--
--
--
-- For more information, see <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/logging-management-and-data-events-with-cloudtrail.html Logging Data and Management Events for Trails > in the /AWS CloudTrail User Guide/ .
module Network.AWS.CloudTrail.GetEventSelectors
  ( -- * Creating a Request
    getEventSelectors,
    GetEventSelectors,

    -- * Request Lenses
    gesTrailName,

    -- * Destructuring the Response
    getEventSelectorsResponse,
    GetEventSelectorsResponse,

    -- * Response Lenses
    gesrrsTrailARN,
    gesrrsEventSelectors,
    gesrrsAdvancedEventSelectors,
    gesrrsResponseStatus,
  )
where

import Network.AWS.CloudTrail.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getEventSelectors' smart constructor.
newtype GetEventSelectors = GetEventSelectors'
  { _gesTrailName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetEventSelectors' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gesTrailName' - Specifies the name of the trail or trail ARN. If you specify a trail name, the string must meet the following requirements:     * Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)     * Start with a letter or number, and end with a letter or number     * Be between 3 and 128 characters     * Have no adjacent periods, underscores or dashes. Names like @my-_namespace@ and @my--namespace@ are not valid.     * Not be in IP address format (for example, 192.168.5.4) If you specify a trail ARN, it must be in the format: @arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail@
getEventSelectors ::
  -- | 'gesTrailName'
  Text ->
  GetEventSelectors
getEventSelectors pTrailName_ =
  GetEventSelectors' {_gesTrailName = pTrailName_}

-- | Specifies the name of the trail or trail ARN. If you specify a trail name, the string must meet the following requirements:     * Contain only ASCII letters (a-z, A-Z), numbers (0-9), periods (.), underscores (_), or dashes (-)     * Start with a letter or number, and end with a letter or number     * Be between 3 and 128 characters     * Have no adjacent periods, underscores or dashes. Names like @my-_namespace@ and @my--namespace@ are not valid.     * Not be in IP address format (for example, 192.168.5.4) If you specify a trail ARN, it must be in the format: @arn:aws:cloudtrail:us-east-2:123456789012:trail/MyTrail@
gesTrailName :: Lens' GetEventSelectors Text
gesTrailName = lens _gesTrailName (\s a -> s {_gesTrailName = a})

instance AWSRequest GetEventSelectors where
  type Rs GetEventSelectors = GetEventSelectorsResponse
  request = postJSON cloudTrail
  response =
    receiveJSON
      ( \s h x ->
          GetEventSelectorsResponse'
            <$> (x .?> "TrailARN")
            <*> (x .?> "EventSelectors" .!@ mempty)
            <*> (x .?> "AdvancedEventSelectors" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable GetEventSelectors

instance NFData GetEventSelectors

instance ToHeaders GetEventSelectors where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.GetEventSelectors" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetEventSelectors where
  toJSON GetEventSelectors' {..} =
    object
      (catMaybes [Just ("TrailName" .= _gesTrailName)])

instance ToPath GetEventSelectors where
  toPath = const "/"

instance ToQuery GetEventSelectors where
  toQuery = const mempty

-- | /See:/ 'getEventSelectorsResponse' smart constructor.
data GetEventSelectorsResponse = GetEventSelectorsResponse'
  { _gesrrsTrailARN ::
      !(Maybe Text),
    _gesrrsEventSelectors ::
      !( Maybe
           [EventSelector]
       ),
    _gesrrsAdvancedEventSelectors ::
      !( Maybe
           [AdvancedEventSelector]
       ),
    _gesrrsResponseStatus ::
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

-- | Creates a value of 'GetEventSelectorsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gesrrsTrailARN' - The specified trail ARN that has the event selectors.
--
-- * 'gesrrsEventSelectors' - The event selectors that are configured for the trail.
--
-- * 'gesrrsAdvancedEventSelectors' - The advanced event selectors that are configured for the trail.
--
-- * 'gesrrsResponseStatus' - -- | The response status code.
getEventSelectorsResponse ::
  -- | 'gesrrsResponseStatus'
  Int ->
  GetEventSelectorsResponse
getEventSelectorsResponse pResponseStatus_ =
  GetEventSelectorsResponse'
    { _gesrrsTrailARN =
        Nothing,
      _gesrrsEventSelectors = Nothing,
      _gesrrsAdvancedEventSelectors = Nothing,
      _gesrrsResponseStatus = pResponseStatus_
    }

-- | The specified trail ARN that has the event selectors.
gesrrsTrailARN :: Lens' GetEventSelectorsResponse (Maybe Text)
gesrrsTrailARN = lens _gesrrsTrailARN (\s a -> s {_gesrrsTrailARN = a})

-- | The event selectors that are configured for the trail.
gesrrsEventSelectors :: Lens' GetEventSelectorsResponse [EventSelector]
gesrrsEventSelectors = lens _gesrrsEventSelectors (\s a -> s {_gesrrsEventSelectors = a}) . _Default . _Coerce

-- | The advanced event selectors that are configured for the trail.
gesrrsAdvancedEventSelectors :: Lens' GetEventSelectorsResponse [AdvancedEventSelector]
gesrrsAdvancedEventSelectors = lens _gesrrsAdvancedEventSelectors (\s a -> s {_gesrrsAdvancedEventSelectors = a}) . _Default . _Coerce

-- | -- | The response status code.
gesrrsResponseStatus :: Lens' GetEventSelectorsResponse Int
gesrrsResponseStatus = lens _gesrrsResponseStatus (\s a -> s {_gesrrsResponseStatus = a})

instance NFData GetEventSelectorsResponse
