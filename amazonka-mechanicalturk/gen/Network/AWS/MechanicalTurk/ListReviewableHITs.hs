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
-- Module      : Network.AWS.MechanicalTurk.ListReviewableHITs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The @ListReviewableHITs@ operation retrieves the HITs with Status equal to Reviewable or Status equal to Reviewing that belong to the Requester calling the operation.
--
--
--
-- This operation returns paginated results.
module Network.AWS.MechanicalTurk.ListReviewableHITs
  ( -- * Creating a Request
    listReviewableHITs,
    ListReviewableHITs,

    -- * Request Lenses
    lrhitStatus,
    lrhitNextToken,
    lrhitMaxResults,
    lrhitHITTypeId,

    -- * Destructuring the Response
    listReviewableHITsResponse,
    ListReviewableHITsResponse,

    -- * Response Lenses
    lrhitrrsNextToken,
    lrhitrrsHITs,
    lrhitrrsNumResults,
    lrhitrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MechanicalTurk.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listReviewableHITs' smart constructor.
data ListReviewableHITs = ListReviewableHITs'
  { _lrhitStatus ::
      !(Maybe ReviewableHITStatus),
    _lrhitNextToken :: !(Maybe Text),
    _lrhitMaxResults :: !(Maybe Nat),
    _lrhitHITTypeId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListReviewableHITs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrhitStatus' - Can be either @Reviewable@ or @Reviewing@ . Reviewable is the default value.
--
-- * 'lrhitNextToken' - Pagination Token
--
-- * 'lrhitMaxResults' - Limit the number of results returned.
--
-- * 'lrhitHITTypeId' - The ID of the HIT type of the HITs to consider for the query. If not specified, all HITs for the Reviewer are considered
listReviewableHITs ::
  ListReviewableHITs
listReviewableHITs =
  ListReviewableHITs'
    { _lrhitStatus = Nothing,
      _lrhitNextToken = Nothing,
      _lrhitMaxResults = Nothing,
      _lrhitHITTypeId = Nothing
    }

-- | Can be either @Reviewable@ or @Reviewing@ . Reviewable is the default value.
lrhitStatus :: Lens' ListReviewableHITs (Maybe ReviewableHITStatus)
lrhitStatus = lens _lrhitStatus (\s a -> s {_lrhitStatus = a})

-- | Pagination Token
lrhitNextToken :: Lens' ListReviewableHITs (Maybe Text)
lrhitNextToken = lens _lrhitNextToken (\s a -> s {_lrhitNextToken = a})

-- | Limit the number of results returned.
lrhitMaxResults :: Lens' ListReviewableHITs (Maybe Natural)
lrhitMaxResults = lens _lrhitMaxResults (\s a -> s {_lrhitMaxResults = a}) . mapping _Nat

-- | The ID of the HIT type of the HITs to consider for the query. If not specified, all HITs for the Reviewer are considered
lrhitHITTypeId :: Lens' ListReviewableHITs (Maybe Text)
lrhitHITTypeId = lens _lrhitHITTypeId (\s a -> s {_lrhitHITTypeId = a})

instance AWSPager ListReviewableHITs where
  page rq rs
    | stop (rs ^. lrhitrrsNextToken) = Nothing
    | stop (rs ^. lrhitrrsHITs) = Nothing
    | otherwise =
      Just $ rq & lrhitNextToken .~ rs ^. lrhitrrsNextToken

instance AWSRequest ListReviewableHITs where
  type
    Rs ListReviewableHITs =
      ListReviewableHITsResponse
  request = postJSON mechanicalTurk
  response =
    receiveJSON
      ( \s h x ->
          ListReviewableHITsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "HITs" .!@ mempty)
            <*> (x .?> "NumResults")
            <*> (pure (fromEnum s))
      )

instance Hashable ListReviewableHITs

instance NFData ListReviewableHITs

instance ToHeaders ListReviewableHITs where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "MTurkRequesterServiceV20170117.ListReviewableHITs" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListReviewableHITs where
  toJSON ListReviewableHITs' {..} =
    object
      ( catMaybes
          [ ("Status" .=) <$> _lrhitStatus,
            ("NextToken" .=) <$> _lrhitNextToken,
            ("MaxResults" .=) <$> _lrhitMaxResults,
            ("HITTypeId" .=) <$> _lrhitHITTypeId
          ]
      )

instance ToPath ListReviewableHITs where
  toPath = const "/"

instance ToQuery ListReviewableHITs where
  toQuery = const mempty

-- | /See:/ 'listReviewableHITsResponse' smart constructor.
data ListReviewableHITsResponse = ListReviewableHITsResponse'
  { _lrhitrrsNextToken ::
      !(Maybe Text),
    _lrhitrrsHITs ::
      !(Maybe [HIT]),
    _lrhitrrsNumResults ::
      !(Maybe Int),
    _lrhitrrsResponseStatus ::
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

-- | Creates a value of 'ListReviewableHITsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrhitrrsNextToken' - Undocumented member.
--
-- * 'lrhitrrsHITs' - The list of HIT elements returned by the query.
--
-- * 'lrhitrrsNumResults' - The number of HITs on this page in the filtered results list, equivalent to the number of HITs being returned by this call.
--
-- * 'lrhitrrsResponseStatus' - -- | The response status code.
listReviewableHITsResponse ::
  -- | 'lrhitrrsResponseStatus'
  Int ->
  ListReviewableHITsResponse
listReviewableHITsResponse pResponseStatus_ =
  ListReviewableHITsResponse'
    { _lrhitrrsNextToken =
        Nothing,
      _lrhitrrsHITs = Nothing,
      _lrhitrrsNumResults = Nothing,
      _lrhitrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
lrhitrrsNextToken :: Lens' ListReviewableHITsResponse (Maybe Text)
lrhitrrsNextToken = lens _lrhitrrsNextToken (\s a -> s {_lrhitrrsNextToken = a})

-- | The list of HIT elements returned by the query.
lrhitrrsHITs :: Lens' ListReviewableHITsResponse [HIT]
lrhitrrsHITs = lens _lrhitrrsHITs (\s a -> s {_lrhitrrsHITs = a}) . _Default . _Coerce

-- | The number of HITs on this page in the filtered results list, equivalent to the number of HITs being returned by this call.
lrhitrrsNumResults :: Lens' ListReviewableHITsResponse (Maybe Int)
lrhitrrsNumResults = lens _lrhitrrsNumResults (\s a -> s {_lrhitrrsNumResults = a})

-- | -- | The response status code.
lrhitrrsResponseStatus :: Lens' ListReviewableHITsResponse Int
lrhitrrsResponseStatus = lens _lrhitrrsResponseStatus (\s a -> s {_lrhitrrsResponseStatus = a})

instance NFData ListReviewableHITsResponse
