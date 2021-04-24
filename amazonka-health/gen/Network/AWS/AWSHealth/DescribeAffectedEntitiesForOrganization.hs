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
-- Module      : Network.AWS.AWSHealth.DescribeAffectedEntitiesForOrganization
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of entities that have been affected by one or more events for one or more accounts in your organization in AWS Organizations, based on the filter criteria. Entities can refer to individual customer resources, groups of customer resources, or any other construct, depending on the AWS service.
--
--
-- At least one event Amazon Resource Name (ARN) and account ID are required. Results are sorted by the @lastUpdatedTime@ of the entity, starting with the most recent.
--
-- Before you can call this operation, you must first enable AWS Health to work with AWS Organizations. To do this, call the <https://docs.aws.amazon.com/health/latest/APIReference/API_EnableHealthServiceAccessForOrganization.html EnableHealthServiceAccessForOrganization> operation from your organization's management account.
--
--
-- This operation returns paginated results.
module Network.AWS.AWSHealth.DescribeAffectedEntitiesForOrganization
  ( -- * Creating a Request
    describeAffectedEntitiesForOrganization,
    DescribeAffectedEntitiesForOrganization,

    -- * Request Lenses
    daefoNextToken,
    daefoMaxResults,
    daefoLocale,
    daefoOrganizationEntityFilters,

    -- * Destructuring the Response
    describeAffectedEntitiesForOrganizationResponse,
    DescribeAffectedEntitiesForOrganizationResponse,

    -- * Response Lenses
    daeforrsNextToken,
    daeforrsFailedSet,
    daeforrsEntities,
    daeforrsResponseStatus,
  )
where

import Network.AWS.AWSHealth.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeAffectedEntitiesForOrganization' smart constructor.
data DescribeAffectedEntitiesForOrganization = DescribeAffectedEntitiesForOrganization'
  { _daefoNextToken ::
      !( Maybe
           Text
       ),
    _daefoMaxResults ::
      !( Maybe
           Nat
       ),
    _daefoLocale ::
      !( Maybe
           Text
       ),
    _daefoOrganizationEntityFilters ::
      !( List1
           EventAccountFilter
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

-- | Creates a value of 'DescribeAffectedEntitiesForOrganization' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daefoNextToken' - If the results of a search are large, only a portion of the results are returned, and a @nextToken@ pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.
--
-- * 'daefoMaxResults' - The maximum number of items to return in one batch, between 10 and 100, inclusive.
--
-- * 'daefoLocale' - The locale (language) to return information in. English (en) is the default and the only supported value at this time.
--
-- * 'daefoOrganizationEntityFilters' - A JSON set of elements including the @awsAccountId@ and the @eventArn@ .
describeAffectedEntitiesForOrganization ::
  -- | 'daefoOrganizationEntityFilters'
  NonEmpty EventAccountFilter ->
  DescribeAffectedEntitiesForOrganization
describeAffectedEntitiesForOrganization
  pOrganizationEntityFilters_ =
    DescribeAffectedEntitiesForOrganization'
      { _daefoNextToken =
          Nothing,
        _daefoMaxResults = Nothing,
        _daefoLocale = Nothing,
        _daefoOrganizationEntityFilters =
          _List1
            # pOrganizationEntityFilters_
      }

-- | If the results of a search are large, only a portion of the results are returned, and a @nextToken@ pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.
daefoNextToken :: Lens' DescribeAffectedEntitiesForOrganization (Maybe Text)
daefoNextToken = lens _daefoNextToken (\s a -> s {_daefoNextToken = a})

-- | The maximum number of items to return in one batch, between 10 and 100, inclusive.
daefoMaxResults :: Lens' DescribeAffectedEntitiesForOrganization (Maybe Natural)
daefoMaxResults = lens _daefoMaxResults (\s a -> s {_daefoMaxResults = a}) . mapping _Nat

-- | The locale (language) to return information in. English (en) is the default and the only supported value at this time.
daefoLocale :: Lens' DescribeAffectedEntitiesForOrganization (Maybe Text)
daefoLocale = lens _daefoLocale (\s a -> s {_daefoLocale = a})

-- | A JSON set of elements including the @awsAccountId@ and the @eventArn@ .
daefoOrganizationEntityFilters :: Lens' DescribeAffectedEntitiesForOrganization (NonEmpty EventAccountFilter)
daefoOrganizationEntityFilters = lens _daefoOrganizationEntityFilters (\s a -> s {_daefoOrganizationEntityFilters = a}) . _List1

instance
  AWSPager
    DescribeAffectedEntitiesForOrganization
  where
  page rq rs
    | stop (rs ^. daeforrsNextToken) = Nothing
    | stop (rs ^. daeforrsEntities) = Nothing
    | otherwise =
      Just $ rq & daefoNextToken .~ rs ^. daeforrsNextToken

instance
  AWSRequest
    DescribeAffectedEntitiesForOrganization
  where
  type
    Rs DescribeAffectedEntitiesForOrganization =
      DescribeAffectedEntitiesForOrganizationResponse
  request = postJSON awsHealth
  response =
    receiveJSON
      ( \s h x ->
          DescribeAffectedEntitiesForOrganizationResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "failedSet" .!@ mempty)
            <*> (x .?> "entities" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    DescribeAffectedEntitiesForOrganization

instance
  NFData
    DescribeAffectedEntitiesForOrganization

instance
  ToHeaders
    DescribeAffectedEntitiesForOrganization
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSHealth_20160804.DescribeAffectedEntitiesForOrganization" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance
  ToJSON
    DescribeAffectedEntitiesForOrganization
  where
  toJSON DescribeAffectedEntitiesForOrganization' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _daefoNextToken,
            ("maxResults" .=) <$> _daefoMaxResults,
            ("locale" .=) <$> _daefoLocale,
            Just
              ( "organizationEntityFilters"
                  .= _daefoOrganizationEntityFilters
              )
          ]
      )

instance
  ToPath
    DescribeAffectedEntitiesForOrganization
  where
  toPath = const "/"

instance
  ToQuery
    DescribeAffectedEntitiesForOrganization
  where
  toQuery = const mempty

-- | /See:/ 'describeAffectedEntitiesForOrganizationResponse' smart constructor.
data DescribeAffectedEntitiesForOrganizationResponse = DescribeAffectedEntitiesForOrganizationResponse'
  { _daeforrsNextToken ::
      !( Maybe
           Text
       ),
    _daeforrsFailedSet ::
      !( Maybe
           [OrganizationAffectedEntitiesErrorItem]
       ),
    _daeforrsEntities ::
      !( Maybe
           [AffectedEntity]
       ),
    _daeforrsResponseStatus ::
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

-- | Creates a value of 'DescribeAffectedEntitiesForOrganizationResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daeforrsNextToken' - If the results of a search are large, only a portion of the results are returned, and a @nextToken@ pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.
--
-- * 'daeforrsFailedSet' - A JSON set of elements of the failed response, including the @awsAccountId@ , @errorMessage@ , @errorName@ , and @eventArn@ .
--
-- * 'daeforrsEntities' - A JSON set of elements including the @awsAccountId@ and its @entityArn@ , @entityValue@ and its @entityArn@ , @lastUpdatedTime@ , and @statusCode@ .
--
-- * 'daeforrsResponseStatus' - -- | The response status code.
describeAffectedEntitiesForOrganizationResponse ::
  -- | 'daeforrsResponseStatus'
  Int ->
  DescribeAffectedEntitiesForOrganizationResponse
describeAffectedEntitiesForOrganizationResponse
  pResponseStatus_ =
    DescribeAffectedEntitiesForOrganizationResponse'
      { _daeforrsNextToken =
          Nothing,
        _daeforrsFailedSet =
          Nothing,
        _daeforrsEntities =
          Nothing,
        _daeforrsResponseStatus =
          pResponseStatus_
      }

-- | If the results of a search are large, only a portion of the results are returned, and a @nextToken@ pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.
daeforrsNextToken :: Lens' DescribeAffectedEntitiesForOrganizationResponse (Maybe Text)
daeforrsNextToken = lens _daeforrsNextToken (\s a -> s {_daeforrsNextToken = a})

-- | A JSON set of elements of the failed response, including the @awsAccountId@ , @errorMessage@ , @errorName@ , and @eventArn@ .
daeforrsFailedSet :: Lens' DescribeAffectedEntitiesForOrganizationResponse [OrganizationAffectedEntitiesErrorItem]
daeforrsFailedSet = lens _daeforrsFailedSet (\s a -> s {_daeforrsFailedSet = a}) . _Default . _Coerce

-- | A JSON set of elements including the @awsAccountId@ and its @entityArn@ , @entityValue@ and its @entityArn@ , @lastUpdatedTime@ , and @statusCode@ .
daeforrsEntities :: Lens' DescribeAffectedEntitiesForOrganizationResponse [AffectedEntity]
daeforrsEntities = lens _daeforrsEntities (\s a -> s {_daeforrsEntities = a}) . _Default . _Coerce

-- | -- | The response status code.
daeforrsResponseStatus :: Lens' DescribeAffectedEntitiesForOrganizationResponse Int
daeforrsResponseStatus = lens _daeforrsResponseStatus (\s a -> s {_daeforrsResponseStatus = a})

instance
  NFData
    DescribeAffectedEntitiesForOrganizationResponse
