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
-- Module      : Network.AWS.AWSHealth.DescribeEventTypes
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the event types that meet the specified filter criteria. You can use this API operation to find information about the AWS Health event, such as the category, AWS service, and event code. The metadata for each event appears in the <https://docs.aws.amazon.com/health/latest/APIReference/API_EventType.html EventType> object.
--
--
-- If you don't specify a filter criteria, the API operation returns all event types, in no particular order.
--
--
-- This operation returns paginated results.
module Network.AWS.AWSHealth.DescribeEventTypes
  ( -- * Creating a Request
    describeEventTypes,
    DescribeEventTypes,

    -- * Request Lenses
    detNextToken,
    detMaxResults,
    detLocale,
    detFilter,

    -- * Destructuring the Response
    describeEventTypesResponse,
    DescribeEventTypesResponse,

    -- * Response Lenses
    detrrsEventTypes,
    detrrsNextToken,
    detrrsResponseStatus,
  )
where

import Network.AWS.AWSHealth.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeEventTypes' smart constructor.
data DescribeEventTypes = DescribeEventTypes'
  { _detNextToken ::
      !(Maybe Text),
    _detMaxResults :: !(Maybe Nat),
    _detLocale :: !(Maybe Text),
    _detFilter ::
      !(Maybe EventTypeFilter)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DescribeEventTypes' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'detNextToken' - If the results of a search are large, only a portion of the results are returned, and a @nextToken@ pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.
--
-- * 'detMaxResults' - The maximum number of items to return in one batch, between 10 and 100, inclusive.
--
-- * 'detLocale' - The locale (language) to return information in. English (en) is the default and the only supported value at this time.
--
-- * 'detFilter' - Values to narrow the results returned.
describeEventTypes ::
  DescribeEventTypes
describeEventTypes =
  DescribeEventTypes'
    { _detNextToken = Nothing,
      _detMaxResults = Nothing,
      _detLocale = Nothing,
      _detFilter = Nothing
    }

-- | If the results of a search are large, only a portion of the results are returned, and a @nextToken@ pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.
detNextToken :: Lens' DescribeEventTypes (Maybe Text)
detNextToken = lens _detNextToken (\s a -> s {_detNextToken = a})

-- | The maximum number of items to return in one batch, between 10 and 100, inclusive.
detMaxResults :: Lens' DescribeEventTypes (Maybe Natural)
detMaxResults = lens _detMaxResults (\s a -> s {_detMaxResults = a}) . mapping _Nat

-- | The locale (language) to return information in. English (en) is the default and the only supported value at this time.
detLocale :: Lens' DescribeEventTypes (Maybe Text)
detLocale = lens _detLocale (\s a -> s {_detLocale = a})

-- | Values to narrow the results returned.
detFilter :: Lens' DescribeEventTypes (Maybe EventTypeFilter)
detFilter = lens _detFilter (\s a -> s {_detFilter = a})

instance AWSPager DescribeEventTypes where
  page rq rs
    | stop (rs ^. detrrsNextToken) = Nothing
    | stop (rs ^. detrrsEventTypes) = Nothing
    | otherwise =
      Just $ rq & detNextToken .~ rs ^. detrrsNextToken

instance AWSRequest DescribeEventTypes where
  type
    Rs DescribeEventTypes =
      DescribeEventTypesResponse
  request = postJSON awsHealth
  response =
    receiveJSON
      ( \s h x ->
          DescribeEventTypesResponse'
            <$> (x .?> "eventTypes" .!@ mempty)
            <*> (x .?> "nextToken")
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeEventTypes

instance NFData DescribeEventTypes

instance ToHeaders DescribeEventTypes where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSHealth_20160804.DescribeEventTypes" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeEventTypes where
  toJSON DescribeEventTypes' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _detNextToken,
            ("maxResults" .=) <$> _detMaxResults,
            ("locale" .=) <$> _detLocale,
            ("filter" .=) <$> _detFilter
          ]
      )

instance ToPath DescribeEventTypes where
  toPath = const "/"

instance ToQuery DescribeEventTypes where
  toQuery = const mempty

-- | /See:/ 'describeEventTypesResponse' smart constructor.
data DescribeEventTypesResponse = DescribeEventTypesResponse'
  { _detrrsEventTypes ::
      !( Maybe
           [EventType]
       ),
    _detrrsNextToken ::
      !(Maybe Text),
    _detrrsResponseStatus ::
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

-- | Creates a value of 'DescribeEventTypesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'detrrsEventTypes' - A list of event types that match the filter criteria. Event types have a category (@issue@ , @accountNotification@ , or @scheduledChange@ ), a service (for example, @EC2@ , @RDS@ , @DATAPIPELINE@ , @BILLING@ ), and a code (in the format @AWS_/SERVICE/ _/DESCRIPTION/ @ ; for example, @AWS_EC2_SYSTEM_MAINTENANCE_EVENT@ ).
--
-- * 'detrrsNextToken' - If the results of a search are large, only a portion of the results are returned, and a @nextToken@ pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.
--
-- * 'detrrsResponseStatus' - -- | The response status code.
describeEventTypesResponse ::
  -- | 'detrrsResponseStatus'
  Int ->
  DescribeEventTypesResponse
describeEventTypesResponse pResponseStatus_ =
  DescribeEventTypesResponse'
    { _detrrsEventTypes =
        Nothing,
      _detrrsNextToken = Nothing,
      _detrrsResponseStatus = pResponseStatus_
    }

-- | A list of event types that match the filter criteria. Event types have a category (@issue@ , @accountNotification@ , or @scheduledChange@ ), a service (for example, @EC2@ , @RDS@ , @DATAPIPELINE@ , @BILLING@ ), and a code (in the format @AWS_/SERVICE/ _/DESCRIPTION/ @ ; for example, @AWS_EC2_SYSTEM_MAINTENANCE_EVENT@ ).
detrrsEventTypes :: Lens' DescribeEventTypesResponse [EventType]
detrrsEventTypes = lens _detrrsEventTypes (\s a -> s {_detrrsEventTypes = a}) . _Default . _Coerce

-- | If the results of a search are large, only a portion of the results are returned, and a @nextToken@ pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.
detrrsNextToken :: Lens' DescribeEventTypesResponse (Maybe Text)
detrrsNextToken = lens _detrrsNextToken (\s a -> s {_detrrsNextToken = a})

-- | -- | The response status code.
detrrsResponseStatus :: Lens' DescribeEventTypesResponse Int
detrrsResponseStatus = lens _detrrsResponseStatus (\s a -> s {_detrrsResponseStatus = a})

instance NFData DescribeEventTypesResponse
