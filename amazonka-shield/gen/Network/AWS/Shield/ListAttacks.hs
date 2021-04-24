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
-- Module      : Network.AWS.Shield.ListAttacks
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns all ongoing DDoS attacks or all DDoS attacks during a specified time period.
--
--
--
-- This operation returns paginated results.
module Network.AWS.Shield.ListAttacks
  ( -- * Creating a Request
    listAttacks,
    ListAttacks,

    -- * Request Lenses
    laNextToken,
    laMaxResults,
    laStartTime,
    laEndTime,
    laResourceARNs,

    -- * Destructuring the Response
    listAttacksResponse,
    ListAttacksResponse,

    -- * Response Lenses
    larrsNextToken,
    larrsAttackSummaries,
    larrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.Shield.Types

-- | /See:/ 'listAttacks' smart constructor.
data ListAttacks = ListAttacks'
  { _laNextToken ::
      !(Maybe Text),
    _laMaxResults :: !(Maybe Nat),
    _laStartTime :: !(Maybe TimeRange),
    _laEndTime :: !(Maybe TimeRange),
    _laResourceARNs :: !(Maybe [Text])
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListAttacks' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laNextToken' - The @ListAttacksRequest.NextMarker@ value from a previous call to @ListAttacksRequest@ . Pass null if this is the first call.
--
-- * 'laMaxResults' - The maximum number of 'AttackSummary' objects to return. If you leave this blank, Shield Advanced returns the first 20 results. This is a maximum value. Shield Advanced might return the results in smaller batches. That is, the number of objects returned could be less than @MaxResults@ , even if there are still more objects yet to return. If there are more objects to return, Shield Advanced returns a value in @NextToken@ that you can use in your next request, to get the next batch of objects.
--
-- * 'laStartTime' - The start of the time period for the attacks. This is a @timestamp@ type. The sample request above indicates a @number@ type because the default used by WAF is Unix time in seconds. However any valid <http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types timestamp format> is allowed.
--
-- * 'laEndTime' - The end of the time period for the attacks. This is a @timestamp@ type. The sample request above indicates a @number@ type because the default used by WAF is Unix time in seconds. However any valid <http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types timestamp format> is allowed.
--
-- * 'laResourceARNs' - The ARN (Amazon Resource Name) of the resource that was attacked. If this is left blank, all applicable resources for this account will be included.
listAttacks ::
  ListAttacks
listAttacks =
  ListAttacks'
    { _laNextToken = Nothing,
      _laMaxResults = Nothing,
      _laStartTime = Nothing,
      _laEndTime = Nothing,
      _laResourceARNs = Nothing
    }

-- | The @ListAttacksRequest.NextMarker@ value from a previous call to @ListAttacksRequest@ . Pass null if this is the first call.
laNextToken :: Lens' ListAttacks (Maybe Text)
laNextToken = lens _laNextToken (\s a -> s {_laNextToken = a})

-- | The maximum number of 'AttackSummary' objects to return. If you leave this blank, Shield Advanced returns the first 20 results. This is a maximum value. Shield Advanced might return the results in smaller batches. That is, the number of objects returned could be less than @MaxResults@ , even if there are still more objects yet to return. If there are more objects to return, Shield Advanced returns a value in @NextToken@ that you can use in your next request, to get the next batch of objects.
laMaxResults :: Lens' ListAttacks (Maybe Natural)
laMaxResults = lens _laMaxResults (\s a -> s {_laMaxResults = a}) . mapping _Nat

-- | The start of the time period for the attacks. This is a @timestamp@ type. The sample request above indicates a @number@ type because the default used by WAF is Unix time in seconds. However any valid <http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types timestamp format> is allowed.
laStartTime :: Lens' ListAttacks (Maybe TimeRange)
laStartTime = lens _laStartTime (\s a -> s {_laStartTime = a})

-- | The end of the time period for the attacks. This is a @timestamp@ type. The sample request above indicates a @number@ type because the default used by WAF is Unix time in seconds. However any valid <http://docs.aws.amazon.com/cli/latest/userguide/cli-using-param.html#parameter-types timestamp format> is allowed.
laEndTime :: Lens' ListAttacks (Maybe TimeRange)
laEndTime = lens _laEndTime (\s a -> s {_laEndTime = a})

-- | The ARN (Amazon Resource Name) of the resource that was attacked. If this is left blank, all applicable resources for this account will be included.
laResourceARNs :: Lens' ListAttacks [Text]
laResourceARNs = lens _laResourceARNs (\s a -> s {_laResourceARNs = a}) . _Default . _Coerce

instance AWSPager ListAttacks where
  page rq rs
    | stop (rs ^. larrsNextToken) = Nothing
    | stop (rs ^. larrsAttackSummaries) = Nothing
    | otherwise =
      Just $ rq & laNextToken .~ rs ^. larrsNextToken

instance AWSRequest ListAttacks where
  type Rs ListAttacks = ListAttacksResponse
  request = postJSON shield
  response =
    receiveJSON
      ( \s h x ->
          ListAttacksResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "AttackSummaries" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListAttacks

instance NFData ListAttacks

instance ToHeaders ListAttacks where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AWSShield_20160616.ListAttacks" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListAttacks where
  toJSON ListAttacks' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _laNextToken,
            ("MaxResults" .=) <$> _laMaxResults,
            ("StartTime" .=) <$> _laStartTime,
            ("EndTime" .=) <$> _laEndTime,
            ("ResourceArns" .=) <$> _laResourceARNs
          ]
      )

instance ToPath ListAttacks where
  toPath = const "/"

instance ToQuery ListAttacks where
  toQuery = const mempty

-- | /See:/ 'listAttacksResponse' smart constructor.
data ListAttacksResponse = ListAttacksResponse'
  { _larrsNextToken ::
      !(Maybe Text),
    _larrsAttackSummaries ::
      !(Maybe [AttackSummary]),
    _larrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListAttacksResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'larrsNextToken' - The token returned by a previous call to indicate that there is more data available. If not null, more results are available. Pass this value for the @NextMarker@ parameter in a subsequent call to @ListAttacks@ to retrieve the next set of items. Shield Advanced might return the list of 'AttackSummary' objects in batches smaller than the number specified by MaxResults. If there are more attack summary objects to return, Shield Advanced will always also return a @NextToken@ .
--
-- * 'larrsAttackSummaries' - The attack information for the specified time range.
--
-- * 'larrsResponseStatus' - -- | The response status code.
listAttacksResponse ::
  -- | 'larrsResponseStatus'
  Int ->
  ListAttacksResponse
listAttacksResponse pResponseStatus_ =
  ListAttacksResponse'
    { _larrsNextToken = Nothing,
      _larrsAttackSummaries = Nothing,
      _larrsResponseStatus = pResponseStatus_
    }

-- | The token returned by a previous call to indicate that there is more data available. If not null, more results are available. Pass this value for the @NextMarker@ parameter in a subsequent call to @ListAttacks@ to retrieve the next set of items. Shield Advanced might return the list of 'AttackSummary' objects in batches smaller than the number specified by MaxResults. If there are more attack summary objects to return, Shield Advanced will always also return a @NextToken@ .
larrsNextToken :: Lens' ListAttacksResponse (Maybe Text)
larrsNextToken = lens _larrsNextToken (\s a -> s {_larrsNextToken = a})

-- | The attack information for the specified time range.
larrsAttackSummaries :: Lens' ListAttacksResponse [AttackSummary]
larrsAttackSummaries = lens _larrsAttackSummaries (\s a -> s {_larrsAttackSummaries = a}) . _Default . _Coerce

-- | -- | The response status code.
larrsResponseStatus :: Lens' ListAttacksResponse Int
larrsResponseStatus = lens _larrsResponseStatus (\s a -> s {_larrsResponseStatus = a})

instance NFData ListAttacksResponse
