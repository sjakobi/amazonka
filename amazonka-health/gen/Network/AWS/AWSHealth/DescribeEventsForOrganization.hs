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
-- Module      : Network.AWS.AWSHealth.DescribeEventsForOrganization
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about events across your organization in AWS Organizations. You can use the@filters@ parameter to specify the events that you want to return. Events are returned in a summary form and don't include the affected accounts, detailed description, any additional metadata that depends on the event type, or any affected resources. To retrieve that information, use the following operations:
--
--
--     * <https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedAccountsForOrganization.html DescribeAffectedAccountsForOrganization>
--
--     * <https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeEventDetailsForOrganization.html DescribeEventDetailsForOrganization>
--
--     * <https://docs.aws.amazon.com/health/latest/APIReference/API_DescribeAffectedEntitiesForOrganization.html DescribeAffectedEntitiesForOrganization>
--
--
--
-- If you don't specify a @filter@ , the @DescribeEventsForOrganizations@ returns all events across your organization. Results are sorted by @lastModifiedTime@ , starting with the most recent event.
--
-- For more information about the different types of AWS Health events, see <https://docs.aws.amazon.com/health/latest/APIReference/API_Event.html Event> .
--
-- Before you can call this operation, you must first enable AWS Health to work with AWS Organizations. To do this, call the <https://docs.aws.amazon.com/health/latest/APIReference/API_EnableHealthServiceAccessForOrganization.html EnableHealthServiceAccessForOrganization> operation from your organization's management account.
--
--
-- This operation returns paginated results.
module Network.AWS.AWSHealth.DescribeEventsForOrganization
  ( -- * Creating a Request
    describeEventsForOrganization,
    DescribeEventsForOrganization,

    -- * Request Lenses
    defoNextToken,
    defoMaxResults,
    defoLocale,
    defoFilter,

    -- * Destructuring the Response
    describeEventsForOrganizationResponse,
    DescribeEventsForOrganizationResponse,

    -- * Response Lenses
    deforrsNextToken,
    deforrsEvents,
    deforrsResponseStatus,
  )
where

import Network.AWS.AWSHealth.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeEventsForOrganization' smart constructor.
data DescribeEventsForOrganization = DescribeEventsForOrganization'
  { _defoNextToken ::
      !( Maybe
           Text
       ),
    _defoMaxResults ::
      !( Maybe
           Nat
       ),
    _defoLocale ::
      !( Maybe
           Text
       ),
    _defoFilter ::
      !( Maybe
           OrganizationEventFilter
       )
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeEventsForOrganization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'defoNextToken' - If the results of a search are large, only a portion of the results are returned, and a @nextToken@ pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.
--
-- * 'defoMaxResults' - The maximum number of items to return in one batch, between 10 and 100, inclusive.
--
-- * 'defoLocale' - The locale (language) to return information in. English (en) is the default and the only supported value at this time.
--
-- * 'defoFilter' - Values to narrow the results returned.
describeEventsForOrganization ::
  DescribeEventsForOrganization
describeEventsForOrganization =
  DescribeEventsForOrganization'
    { _defoNextToken =
        Nothing,
      _defoMaxResults = Nothing,
      _defoLocale = Nothing,
      _defoFilter = Nothing
    }

-- | If the results of a search are large, only a portion of the results are returned, and a @nextToken@ pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.
defoNextToken :: Lens' DescribeEventsForOrganization (Maybe Text)
defoNextToken = lens _defoNextToken (\s a -> s {_defoNextToken = a})

-- | The maximum number of items to return in one batch, between 10 and 100, inclusive.
defoMaxResults :: Lens' DescribeEventsForOrganization (Maybe Natural)
defoMaxResults = lens _defoMaxResults (\s a -> s {_defoMaxResults = a}) . mapping _Nat

-- | The locale (language) to return information in. English (en) is the default and the only supported value at this time.
defoLocale :: Lens' DescribeEventsForOrganization (Maybe Text)
defoLocale = lens _defoLocale (\s a -> s {_defoLocale = a})

-- | Values to narrow the results returned.
defoFilter :: Lens' DescribeEventsForOrganization (Maybe OrganizationEventFilter)
defoFilter = lens _defoFilter (\s a -> s {_defoFilter = a})

instance AWSPager DescribeEventsForOrganization where
  page rq rs
    | stop (rs ^. deforrsNextToken) = Nothing
    | stop (rs ^. deforrsEvents) = Nothing
    | otherwise =
      Just $ rq & defoNextToken .~ rs ^. deforrsNextToken

instance AWSRequest DescribeEventsForOrganization where
  type
    Rs DescribeEventsForOrganization =
      DescribeEventsForOrganizationResponse
  request = postJSON awsHealth
  response =
    receiveJSON
      ( \s h x ->
          DescribeEventsForOrganizationResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "events" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeEventsForOrganization

instance NFData DescribeEventsForOrganization

instance ToHeaders DescribeEventsForOrganization where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSHealth_20160804.DescribeEventsForOrganization" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeEventsForOrganization where
  toJSON DescribeEventsForOrganization' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _defoNextToken,
            ("maxResults" .=) <$> _defoMaxResults,
            ("locale" .=) <$> _defoLocale,
            ("filter" .=) <$> _defoFilter
          ]
      )

instance ToPath DescribeEventsForOrganization where
  toPath = const "/"

instance ToQuery DescribeEventsForOrganization where
  toQuery = const mempty

-- | /See:/ 'describeEventsForOrganizationResponse' smart constructor.
data DescribeEventsForOrganizationResponse = DescribeEventsForOrganizationResponse'
  { _deforrsNextToken ::
      !( Maybe
           Text
       ),
    _deforrsEvents ::
      !( Maybe
           [OrganizationEvent]
       ),
    _deforrsResponseStatus ::
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

-- | Creates a value of 'DescribeEventsForOrganizationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'deforrsNextToken' - If the results of a search are large, only a portion of the results are returned, and a @nextToken@ pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.
--
-- * 'deforrsEvents' - The events that match the specified filter criteria.
--
-- * 'deforrsResponseStatus' - -- | The response status code.
describeEventsForOrganizationResponse ::
  -- | 'deforrsResponseStatus'
  Int ->
  DescribeEventsForOrganizationResponse
describeEventsForOrganizationResponse
  pResponseStatus_ =
    DescribeEventsForOrganizationResponse'
      { _deforrsNextToken =
          Nothing,
        _deforrsEvents = Nothing,
        _deforrsResponseStatus =
          pResponseStatus_
      }

-- | If the results of a search are large, only a portion of the results are returned, and a @nextToken@ pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.
deforrsNextToken :: Lens' DescribeEventsForOrganizationResponse (Maybe Text)
deforrsNextToken = lens _deforrsNextToken (\s a -> s {_deforrsNextToken = a})

-- | The events that match the specified filter criteria.
deforrsEvents :: Lens' DescribeEventsForOrganizationResponse [OrganizationEvent]
deforrsEvents = lens _deforrsEvents (\s a -> s {_deforrsEvents = a}) . _Default . _Coerce

-- | -- | The response status code.
deforrsResponseStatus :: Lens' DescribeEventsForOrganizationResponse Int
deforrsResponseStatus = lens _deforrsResponseStatus (\s a -> s {_deforrsResponseStatus = a})

instance NFData DescribeEventsForOrganizationResponse
