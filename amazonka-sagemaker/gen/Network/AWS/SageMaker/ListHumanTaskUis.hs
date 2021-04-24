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
-- Module      : Network.AWS.SageMaker.ListHumanTaskUis
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about the human task user interfaces in your account.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListHumanTaskUis
  ( -- * Creating a Request
    listHumanTaskUis,
    ListHumanTaskUis,

    -- * Request Lenses
    lhtuSortOrder,
    lhtuNextToken,
    lhtuMaxResults,
    lhtuCreationTimeBefore,
    lhtuCreationTimeAfter,

    -- * Destructuring the Response
    listHumanTaskUisResponse,
    ListHumanTaskUisResponse,

    -- * Response Lenses
    lhturrsNextToken,
    lhturrsResponseStatus,
    lhturrsHumanTaskUiSummaries,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listHumanTaskUis' smart constructor.
data ListHumanTaskUis = ListHumanTaskUis'
  { _lhtuSortOrder ::
      !(Maybe SortOrder),
    _lhtuNextToken :: !(Maybe Text),
    _lhtuMaxResults :: !(Maybe Nat),
    _lhtuCreationTimeBefore ::
      !(Maybe POSIX),
    _lhtuCreationTimeAfter ::
      !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListHumanTaskUis' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lhtuSortOrder' - An optional value that specifies whether you want the results sorted in @Ascending@ or @Descending@ order.
--
-- * 'lhtuNextToken' - A token to resume pagination.
--
-- * 'lhtuMaxResults' - The total number of items to return. If the total number of available items is more than the value specified in @MaxResults@ , then a @NextToken@ will be provided in the output that you can use to resume pagination.
--
-- * 'lhtuCreationTimeBefore' - A filter that returns only human task user interfaces that were created before the specified timestamp.
--
-- * 'lhtuCreationTimeAfter' - A filter that returns only human task user interfaces with a creation time greater than or equal to the specified timestamp.
listHumanTaskUis ::
  ListHumanTaskUis
listHumanTaskUis =
  ListHumanTaskUis'
    { _lhtuSortOrder = Nothing,
      _lhtuNextToken = Nothing,
      _lhtuMaxResults = Nothing,
      _lhtuCreationTimeBefore = Nothing,
      _lhtuCreationTimeAfter = Nothing
    }

-- | An optional value that specifies whether you want the results sorted in @Ascending@ or @Descending@ order.
lhtuSortOrder :: Lens' ListHumanTaskUis (Maybe SortOrder)
lhtuSortOrder = lens _lhtuSortOrder (\s a -> s {_lhtuSortOrder = a})

-- | A token to resume pagination.
lhtuNextToken :: Lens' ListHumanTaskUis (Maybe Text)
lhtuNextToken = lens _lhtuNextToken (\s a -> s {_lhtuNextToken = a})

-- | The total number of items to return. If the total number of available items is more than the value specified in @MaxResults@ , then a @NextToken@ will be provided in the output that you can use to resume pagination.
lhtuMaxResults :: Lens' ListHumanTaskUis (Maybe Natural)
lhtuMaxResults = lens _lhtuMaxResults (\s a -> s {_lhtuMaxResults = a}) . mapping _Nat

-- | A filter that returns only human task user interfaces that were created before the specified timestamp.
lhtuCreationTimeBefore :: Lens' ListHumanTaskUis (Maybe UTCTime)
lhtuCreationTimeBefore = lens _lhtuCreationTimeBefore (\s a -> s {_lhtuCreationTimeBefore = a}) . mapping _Time

-- | A filter that returns only human task user interfaces with a creation time greater than or equal to the specified timestamp.
lhtuCreationTimeAfter :: Lens' ListHumanTaskUis (Maybe UTCTime)
lhtuCreationTimeAfter = lens _lhtuCreationTimeAfter (\s a -> s {_lhtuCreationTimeAfter = a}) . mapping _Time

instance AWSPager ListHumanTaskUis where
  page rq rs
    | stop (rs ^. lhturrsNextToken) = Nothing
    | stop (rs ^. lhturrsHumanTaskUiSummaries) = Nothing
    | otherwise =
      Just $ rq & lhtuNextToken .~ rs ^. lhturrsNextToken

instance AWSRequest ListHumanTaskUis where
  type Rs ListHumanTaskUis = ListHumanTaskUisResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListHumanTaskUisResponse'
            <$> (x .?> "NextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "HumanTaskUiSummaries" .!@ mempty)
      )

instance Hashable ListHumanTaskUis

instance NFData ListHumanTaskUis

instance ToHeaders ListHumanTaskUis where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.ListHumanTaskUis" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListHumanTaskUis where
  toJSON ListHumanTaskUis' {..} =
    object
      ( catMaybes
          [ ("SortOrder" .=) <$> _lhtuSortOrder,
            ("NextToken" .=) <$> _lhtuNextToken,
            ("MaxResults" .=) <$> _lhtuMaxResults,
            ("CreationTimeBefore" .=)
              <$> _lhtuCreationTimeBefore,
            ("CreationTimeAfter" .=) <$> _lhtuCreationTimeAfter
          ]
      )

instance ToPath ListHumanTaskUis where
  toPath = const "/"

instance ToQuery ListHumanTaskUis where
  toQuery = const mempty

-- | /See:/ 'listHumanTaskUisResponse' smart constructor.
data ListHumanTaskUisResponse = ListHumanTaskUisResponse'
  { _lhturrsNextToken ::
      !(Maybe Text),
    _lhturrsResponseStatus ::
      !Int,
    _lhturrsHumanTaskUiSummaries ::
      ![HumanTaskUiSummary]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListHumanTaskUisResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lhturrsNextToken' - A token to resume pagination.
--
-- * 'lhturrsResponseStatus' - -- | The response status code.
--
-- * 'lhturrsHumanTaskUiSummaries' - An array of objects describing the human task user interfaces.
listHumanTaskUisResponse ::
  -- | 'lhturrsResponseStatus'
  Int ->
  ListHumanTaskUisResponse
listHumanTaskUisResponse pResponseStatus_ =
  ListHumanTaskUisResponse'
    { _lhturrsNextToken =
        Nothing,
      _lhturrsResponseStatus = pResponseStatus_,
      _lhturrsHumanTaskUiSummaries = mempty
    }

-- | A token to resume pagination.
lhturrsNextToken :: Lens' ListHumanTaskUisResponse (Maybe Text)
lhturrsNextToken = lens _lhturrsNextToken (\s a -> s {_lhturrsNextToken = a})

-- | -- | The response status code.
lhturrsResponseStatus :: Lens' ListHumanTaskUisResponse Int
lhturrsResponseStatus = lens _lhturrsResponseStatus (\s a -> s {_lhturrsResponseStatus = a})

-- | An array of objects describing the human task user interfaces.
lhturrsHumanTaskUiSummaries :: Lens' ListHumanTaskUisResponse [HumanTaskUiSummary]
lhturrsHumanTaskUiSummaries = lens _lhturrsHumanTaskUiSummaries (\s a -> s {_lhturrsHumanTaskUiSummaries = a}) . _Coerce

instance NFData ListHumanTaskUisResponse
