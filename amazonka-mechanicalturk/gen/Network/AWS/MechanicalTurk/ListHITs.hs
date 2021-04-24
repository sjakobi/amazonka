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
-- Module      : Network.AWS.MechanicalTurk.ListHITs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- The @ListHITs@ operation returns all of a Requester's HITs. The operation returns HITs of any status, except for HITs that have been deleted of with the DeleteHIT operation or that have been auto-deleted.
--
--
--
-- This operation returns paginated results.
module Network.AWS.MechanicalTurk.ListHITs
  ( -- * Creating a Request
    listHITs,
    ListHITs,

    -- * Request Lenses
    lhitNextToken,
    lhitMaxResults,

    -- * Destructuring the Response
    listHITsResponse,
    ListHITsResponse,

    -- * Response Lenses
    lhitrrsNextToken,
    lhitrrsHITs,
    lhitrrsNumResults,
    lhitrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MechanicalTurk.Types
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listHITs' smart constructor.
data ListHITs = ListHITs'
  { _lhitNextToken ::
      !(Maybe Text),
    _lhitMaxResults :: !(Maybe Nat)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListHITs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lhitNextToken' - Pagination token
--
-- * 'lhitMaxResults' - Undocumented member.
listHITs ::
  ListHITs
listHITs =
  ListHITs'
    { _lhitNextToken = Nothing,
      _lhitMaxResults = Nothing
    }

-- | Pagination token
lhitNextToken :: Lens' ListHITs (Maybe Text)
lhitNextToken = lens _lhitNextToken (\s a -> s {_lhitNextToken = a})

-- | Undocumented member.
lhitMaxResults :: Lens' ListHITs (Maybe Natural)
lhitMaxResults = lens _lhitMaxResults (\s a -> s {_lhitMaxResults = a}) . mapping _Nat

instance AWSPager ListHITs where
  page rq rs
    | stop (rs ^. lhitrrsNextToken) = Nothing
    | stop (rs ^. lhitrrsHITs) = Nothing
    | otherwise =
      Just $ rq & lhitNextToken .~ rs ^. lhitrrsNextToken

instance AWSRequest ListHITs where
  type Rs ListHITs = ListHITsResponse
  request = postJSON mechanicalTurk
  response =
    receiveJSON
      ( \s h x ->
          ListHITsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "HITs" .!@ mempty)
            <*> (x .?> "NumResults")
            <*> (pure (fromEnum s))
      )

instance Hashable ListHITs

instance NFData ListHITs

instance ToHeaders ListHITs where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "MTurkRequesterServiceV20170117.ListHITs" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListHITs where
  toJSON ListHITs' {..} =
    object
      ( catMaybes
          [ ("NextToken" .=) <$> _lhitNextToken,
            ("MaxResults" .=) <$> _lhitMaxResults
          ]
      )

instance ToPath ListHITs where
  toPath = const "/"

instance ToQuery ListHITs where
  toQuery = const mempty

-- | /See:/ 'listHITsResponse' smart constructor.
data ListHITsResponse = ListHITsResponse'
  { _lhitrrsNextToken ::
      !(Maybe Text),
    _lhitrrsHITs :: !(Maybe [HIT]),
    _lhitrrsNumResults :: !(Maybe Int),
    _lhitrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListHITsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lhitrrsNextToken' - Undocumented member.
--
-- * 'lhitrrsHITs' - The list of HIT elements returned by the query.
--
-- * 'lhitrrsNumResults' - The number of HITs on this page in the filtered results list, equivalent to the number of HITs being returned by this call.
--
-- * 'lhitrrsResponseStatus' - -- | The response status code.
listHITsResponse ::
  -- | 'lhitrrsResponseStatus'
  Int ->
  ListHITsResponse
listHITsResponse pResponseStatus_ =
  ListHITsResponse'
    { _lhitrrsNextToken = Nothing,
      _lhitrrsHITs = Nothing,
      _lhitrrsNumResults = Nothing,
      _lhitrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
lhitrrsNextToken :: Lens' ListHITsResponse (Maybe Text)
lhitrrsNextToken = lens _lhitrrsNextToken (\s a -> s {_lhitrrsNextToken = a})

-- | The list of HIT elements returned by the query.
lhitrrsHITs :: Lens' ListHITsResponse [HIT]
lhitrrsHITs = lens _lhitrrsHITs (\s a -> s {_lhitrrsHITs = a}) . _Default . _Coerce

-- | The number of HITs on this page in the filtered results list, equivalent to the number of HITs being returned by this call.
lhitrrsNumResults :: Lens' ListHITsResponse (Maybe Int)
lhitrrsNumResults = lens _lhitrrsNumResults (\s a -> s {_lhitrrsNumResults = a})

-- | -- | The response status code.
lhitrrsResponseStatus :: Lens' ListHITsResponse Int
lhitrrsResponseStatus = lens _lhitrrsResponseStatus (\s a -> s {_lhitrrsResponseStatus = a})

instance NFData ListHITsResponse
