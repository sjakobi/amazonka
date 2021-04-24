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
-- Module      : Network.AWS.CloudTrail.LookupEvents
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Looks up <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html#cloudtrail-concepts-management-events management events> or <https://docs.aws.amazon.com/awscloudtrail/latest/userguide/cloudtrail-concepts.html#cloudtrail-concepts-insights-events CloudTrail Insights events> that are captured by CloudTrail. You can look up events that occurred in a region within the last 90 days. Lookup supports the following attributes for management events:
--
--
--     * AWS access key
--
--     * Event ID
--
--     * Event name
--
--     * Event source
--
--     * Read only
--
--     * Resource name
--
--     * Resource type
--
--     * User name
--
--
--
-- Lookup supports the following attributes for Insights events:
--
--     * Event ID
--
--     * Event name
--
--     * Event source
--
--
--
-- All attributes are optional. The default number of results returned is 50, with a maximum of 50 possible. The response includes a token that you can use to get the next page of results.
--
-- /Important:/ The rate of lookup requests is limited to two per second, per account, per region. If this limit is exceeded, a throttling error occurs.
--
--
-- This operation returns paginated results.
module Network.AWS.CloudTrail.LookupEvents
  ( -- * Creating a Request
    lookupEvents,
    LookupEvents,

    -- * Request Lenses
    leNextToken,
    leMaxResults,
    leStartTime,
    leEndTime,
    leEventCategory,
    leLookupAttributes,

    -- * Destructuring the Response
    lookupEventsResponse,
    LookupEventsResponse,

    -- * Response Lenses
    lerrsNextToken,
    lerrsEvents,
    lerrsResponseStatus,
  )
where

import Network.AWS.CloudTrail.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains a request for LookupEvents.
--
--
--
-- /See:/ 'lookupEvents' smart constructor.
data LookupEvents = LookupEvents'
  { _leNextToken ::
      !(Maybe Text),
    _leMaxResults :: !(Maybe Nat),
    _leStartTime :: !(Maybe POSIX),
    _leEndTime :: !(Maybe POSIX),
    _leEventCategory :: !(Maybe EventCategory),
    _leLookupAttributes ::
      !(Maybe [LookupAttribute])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'LookupEvents' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'leNextToken' - The token to use to get the next page of results after a previous API call. This token must be passed in with the same parameters that were specified in the the original call. For example, if the original call specified an AttributeKey of 'Username' with a value of 'root', the call with NextToken should include those same parameters.
--
-- * 'leMaxResults' - The number of events to return. Possible values are 1 through 50. The default is 50.
--
-- * 'leStartTime' - Specifies that only events that occur after or at the specified time are returned. If the specified start time is after the specified end time, an error is returned.
--
-- * 'leEndTime' - Specifies that only events that occur before or at the specified time are returned. If the specified end time is before the specified start time, an error is returned.
--
-- * 'leEventCategory' - Specifies the event category. If you do not specify an event category, events of the category are not returned in the response. For example, if you do not specify @insight@ as the value of @EventCategory@ , no Insights events are returned.
--
-- * 'leLookupAttributes' - Contains a list of lookup attributes. Currently the list can contain only one item.
lookupEvents ::
  LookupEvents
lookupEvents =
  LookupEvents'
    { _leNextToken = Nothing,
      _leMaxResults = Nothing,
      _leStartTime = Nothing,
      _leEndTime = Nothing,
      _leEventCategory = Nothing,
      _leLookupAttributes = Nothing
    }

-- | The token to use to get the next page of results after a previous API call. This token must be passed in with the same parameters that were specified in the the original call. For example, if the original call specified an AttributeKey of 'Username' with a value of 'root', the call with NextToken should include those same parameters.
leNextToken :: Lens' LookupEvents (Maybe Text)
leNextToken = lens _leNextToken (\s a -> s {_leNextToken = a})

-- | The number of events to return. Possible values are 1 through 50. The default is 50.
leMaxResults :: Lens' LookupEvents (Maybe Natural)
leMaxResults = lens _leMaxResults (\s a -> s {_leMaxResults = a}) . mapping _Nat

-- | Specifies that only events that occur after or at the specified time are returned. If the specified start time is after the specified end time, an error is returned.
leStartTime :: Lens' LookupEvents (Maybe UTCTime)
leStartTime = lens _leStartTime (\s a -> s {_leStartTime = a}) . mapping _Time

-- | Specifies that only events that occur before or at the specified time are returned. If the specified end time is before the specified start time, an error is returned.
leEndTime :: Lens' LookupEvents (Maybe UTCTime)
leEndTime = lens _leEndTime (\s a -> s {_leEndTime = a}) . mapping _Time

-- | Specifies the event category. If you do not specify an event category, events of the category are not returned in the response. For example, if you do not specify @insight@ as the value of @EventCategory@ , no Insights events are returned.
leEventCategory :: Lens' LookupEvents (Maybe EventCategory)
leEventCategory = lens _leEventCategory (\s a -> s {_leEventCategory = a})

-- | Contains a list of lookup attributes. Currently the list can contain only one item.
leLookupAttributes :: Lens' LookupEvents [LookupAttribute]
leLookupAttributes = lens _leLookupAttributes (\s a -> s {_leLookupAttributes = a}) . _Default . _Coerce

instance AWSPager LookupEvents where
  page rq rs
    | stop (rs ^. lerrsNextToken) = Nothing
    | stop (rs ^. lerrsEvents) = Nothing
    | otherwise =
      Just $ rq & leNextToken .~ rs ^. lerrsNextToken

instance AWSRequest LookupEvents where
  type Rs LookupEvents = LookupEventsResponse
  request = postJSON cloudTrail
  response =
    receiveJSON
      ( \s h x ->
          LookupEventsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "Events" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable LookupEvents

instance NFData LookupEvents

instance ToHeaders LookupEvents where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "com.amazonaws.cloudtrail.v20131101.CloudTrail_20131101.LookupEvents" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON LookupEvents where
  toJSON LookupEvents' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _leNextToken,
            ("MaxResults" .=) <$> _leMaxResults,
            ("StartTime" .=) <$> _leStartTime,
            ("EndTime" .=) <$> _leEndTime,
            ("EventCategory" .=) <$> _leEventCategory,
            ("LookupAttributes" .=) <$> _leLookupAttributes
          ]
      )

instance ToPath LookupEvents where
  toPath = const "/"

instance ToQuery LookupEvents where
  toQuery = const mempty

-- | Contains a response to a LookupEvents action.
--
--
--
-- /See:/ 'lookupEventsResponse' smart constructor.
data LookupEventsResponse = LookupEventsResponse'
  { _lerrsNextToken ::
      !(Maybe Text),
    _lerrsEvents ::
      !(Maybe [Event]),
    _lerrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'LookupEventsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lerrsNextToken' - The token to use to get the next page of results after a previous API call. If the token does not appear, there are no more results to return. The token must be passed in with the same parameters as the previous call. For example, if the original call specified an AttributeKey of 'Username' with a value of 'root', the call with NextToken should include those same parameters.
--
-- * 'lerrsEvents' - A list of events returned based on the lookup attributes specified and the CloudTrail event. The events list is sorted by time. The most recent event is listed first.
--
-- * 'lerrsResponseStatus' - -- | The response status code.
lookupEventsResponse ::
  -- | 'lerrsResponseStatus'
  Int ->
  LookupEventsResponse
lookupEventsResponse pResponseStatus_ =
  LookupEventsResponse'
    { _lerrsNextToken = Nothing,
      _lerrsEvents = Nothing,
      _lerrsResponseStatus = pResponseStatus_
    }

-- | The token to use to get the next page of results after a previous API call. If the token does not appear, there are no more results to return. The token must be passed in with the same parameters as the previous call. For example, if the original call specified an AttributeKey of 'Username' with a value of 'root', the call with NextToken should include those same parameters.
lerrsNextToken :: Lens' LookupEventsResponse (Maybe Text)
lerrsNextToken = lens _lerrsNextToken (\s a -> s {_lerrsNextToken = a})

-- | A list of events returned based on the lookup attributes specified and the CloudTrail event. The events list is sorted by time. The most recent event is listed first.
lerrsEvents :: Lens' LookupEventsResponse [Event]
lerrsEvents = lens _lerrsEvents (\s a -> s {_lerrsEvents = a}) . _Default . _Coerce

-- | -- | The response status code.
lerrsResponseStatus :: Lens' LookupEventsResponse Int
lerrsResponseStatus = lens _lerrsResponseStatus (\s a -> s {_lerrsResponseStatus = a})

instance NFData LookupEventsResponse
