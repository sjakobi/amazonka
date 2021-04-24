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
-- Module      : Network.AWS.AWSHealth.DescribeAffectedEntities
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of entities that have been affected by the specified events, based on the specified filter criteria. Entities can refer to individual customer resources, groups of customer resources, or any other construct, depending on the AWS service. Events that have impact beyond that of the affected entities, or where the extent of impact is unknown, include at least one entity indicating this.
--
--
-- At least one event ARN is required. Results are sorted by the @lastUpdatedTime@ of the entity, starting with the most recent.
--
--
-- This operation returns paginated results.
module Network.AWS.AWSHealth.DescribeAffectedEntities
  ( -- * Creating a Request
    describeAffectedEntities,
    DescribeAffectedEntities,

    -- * Request Lenses
    daeNextToken,
    daeMaxResults,
    daeLocale,
    daeFilter,

    -- * Destructuring the Response
    describeAffectedEntitiesResponse,
    DescribeAffectedEntitiesResponse,

    -- * Response Lenses
    daerrsNextToken,
    daerrsEntities,
    daerrsResponseStatus,
  )
where

import Network.AWS.AWSHealth.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'describeAffectedEntities' smart constructor.
data DescribeAffectedEntities = DescribeAffectedEntities'
  { _daeNextToken ::
      !(Maybe Text),
    _daeMaxResults ::
      !(Maybe Nat),
    _daeLocale ::
      !(Maybe Text),
    _daeFilter ::
      !EntityFilter
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DescribeAffectedEntities' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daeNextToken' - If the results of a search are large, only a portion of the results are returned, and a @nextToken@ pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.
--
-- * 'daeMaxResults' - The maximum number of items to return in one batch, between 10 and 100, inclusive.
--
-- * 'daeLocale' - The locale (language) to return information in. English (en) is the default and the only supported value at this time.
--
-- * 'daeFilter' - Values to narrow the results returned. At least one event ARN is required.
describeAffectedEntities ::
  -- | 'daeFilter'
  EntityFilter ->
  DescribeAffectedEntities
describeAffectedEntities pFilter_ =
  DescribeAffectedEntities'
    { _daeNextToken = Nothing,
      _daeMaxResults = Nothing,
      _daeLocale = Nothing,
      _daeFilter = pFilter_
    }

-- | If the results of a search are large, only a portion of the results are returned, and a @nextToken@ pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.
daeNextToken :: Lens' DescribeAffectedEntities (Maybe Text)
daeNextToken = lens _daeNextToken (\s a -> s {_daeNextToken = a})

-- | The maximum number of items to return in one batch, between 10 and 100, inclusive.
daeMaxResults :: Lens' DescribeAffectedEntities (Maybe Natural)
daeMaxResults = lens _daeMaxResults (\s a -> s {_daeMaxResults = a}) . mapping _Nat

-- | The locale (language) to return information in. English (en) is the default and the only supported value at this time.
daeLocale :: Lens' DescribeAffectedEntities (Maybe Text)
daeLocale = lens _daeLocale (\s a -> s {_daeLocale = a})

-- | Values to narrow the results returned. At least one event ARN is required.
daeFilter :: Lens' DescribeAffectedEntities EntityFilter
daeFilter = lens _daeFilter (\s a -> s {_daeFilter = a})

instance AWSPager DescribeAffectedEntities where
  page rq rs
    | stop (rs ^. daerrsNextToken) = Nothing
    | stop (rs ^. daerrsEntities) = Nothing
    | otherwise =
      Just $ rq & daeNextToken .~ rs ^. daerrsNextToken

instance AWSRequest DescribeAffectedEntities where
  type
    Rs DescribeAffectedEntities =
      DescribeAffectedEntitiesResponse
  request = postJSON awsHealth
  response =
    receiveJSON
      ( \s h x ->
          DescribeAffectedEntitiesResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "entities" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable DescribeAffectedEntities

instance NFData DescribeAffectedEntities

instance ToHeaders DescribeAffectedEntities where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AWSHealth_20160804.DescribeAffectedEntities" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DescribeAffectedEntities where
  toJSON DescribeAffectedEntities' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _daeNextToken,
            ("maxResults" .=) <$> _daeMaxResults,
            ("locale" .=) <$> _daeLocale,
            Just ("filter" .= _daeFilter)
          ]
      )

instance ToPath DescribeAffectedEntities where
  toPath = const "/"

instance ToQuery DescribeAffectedEntities where
  toQuery = const mempty

-- | /See:/ 'describeAffectedEntitiesResponse' smart constructor.
data DescribeAffectedEntitiesResponse = DescribeAffectedEntitiesResponse'
  { _daerrsNextToken ::
      !( Maybe
           Text
       ),
    _daerrsEntities ::
      !( Maybe
           [AffectedEntity]
       ),
    _daerrsResponseStatus ::
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

-- | Creates a value of 'DescribeAffectedEntitiesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'daerrsNextToken' - If the results of a search are large, only a portion of the results are returned, and a @nextToken@ pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.
--
-- * 'daerrsEntities' - The entities that match the filter criteria.
--
-- * 'daerrsResponseStatus' - -- | The response status code.
describeAffectedEntitiesResponse ::
  -- | 'daerrsResponseStatus'
  Int ->
  DescribeAffectedEntitiesResponse
describeAffectedEntitiesResponse pResponseStatus_ =
  DescribeAffectedEntitiesResponse'
    { _daerrsNextToken =
        Nothing,
      _daerrsEntities = Nothing,
      _daerrsResponseStatus = pResponseStatus_
    }

-- | If the results of a search are large, only a portion of the results are returned, and a @nextToken@ pagination token is returned in the response. To retrieve the next batch of results, reissue the search request and include the returned token. When all results have been returned, the response does not contain a pagination token value.
daerrsNextToken :: Lens' DescribeAffectedEntitiesResponse (Maybe Text)
daerrsNextToken = lens _daerrsNextToken (\s a -> s {_daerrsNextToken = a})

-- | The entities that match the filter criteria.
daerrsEntities :: Lens' DescribeAffectedEntitiesResponse [AffectedEntity]
daerrsEntities = lens _daerrsEntities (\s a -> s {_daerrsEntities = a}) . _Default . _Coerce

-- | -- | The response status code.
daerrsResponseStatus :: Lens' DescribeAffectedEntitiesResponse Int
daerrsResponseStatus = lens _daerrsResponseStatus (\s a -> s {_daerrsResponseStatus = a})

instance NFData DescribeAffectedEntitiesResponse
