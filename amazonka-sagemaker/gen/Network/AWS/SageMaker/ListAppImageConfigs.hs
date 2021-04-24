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
-- Module      : Network.AWS.SageMaker.ListAppImageConfigs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists the AppImageConfigs in your account and their properties. The list can be filtered by creation time or modified time, and whether the AppImageConfig name contains a specified string.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListAppImageConfigs
  ( -- * Creating a Request
    listAppImageConfigs,
    ListAppImageConfigs,

    -- * Request Lenses
    laicSortOrder,
    laicNextToken,
    laicNameContains,
    laicMaxResults,
    laicModifiedTimeBefore,
    laicCreationTimeBefore,
    laicSortBy,
    laicCreationTimeAfter,
    laicModifiedTimeAfter,

    -- * Destructuring the Response
    listAppImageConfigsResponse,
    ListAppImageConfigsResponse,

    -- * Response Lenses
    laicrrsNextToken,
    laicrrsAppImageConfigs,
    laicrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listAppImageConfigs' smart constructor.
data ListAppImageConfigs = ListAppImageConfigs'
  { _laicSortOrder ::
      !(Maybe SortOrder),
    _laicNextToken :: !(Maybe Text),
    _laicNameContains ::
      !(Maybe Text),
    _laicMaxResults :: !(Maybe Nat),
    _laicModifiedTimeBefore ::
      !(Maybe POSIX),
    _laicCreationTimeBefore ::
      !(Maybe POSIX),
    _laicSortBy ::
      !(Maybe AppImageConfigSortKey),
    _laicCreationTimeAfter ::
      !(Maybe POSIX),
    _laicModifiedTimeAfter ::
      !(Maybe POSIX)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListAppImageConfigs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laicSortOrder' - The sort order. The default value is @Descending@ .
--
-- * 'laicNextToken' - If the previous call to @ListImages@ didn't return the full set of AppImageConfigs, the call returns a token for getting the next set of AppImageConfigs.
--
-- * 'laicNameContains' - A filter that returns only AppImageConfigs whose name contains the specified string.
--
-- * 'laicMaxResults' - The maximum number of AppImageConfigs to return in the response. The default value is 10.
--
-- * 'laicModifiedTimeBefore' - A filter that returns only AppImageConfigs modified on or before the specified time.
--
-- * 'laicCreationTimeBefore' - A filter that returns only AppImageConfigs created on or before the specified time.
--
-- * 'laicSortBy' - The property used to sort results. The default value is @CreationTime@ .
--
-- * 'laicCreationTimeAfter' - A filter that returns only AppImageConfigs created on or after the specified time.
--
-- * 'laicModifiedTimeAfter' - A filter that returns only AppImageConfigs modified on or after the specified time.
listAppImageConfigs ::
  ListAppImageConfigs
listAppImageConfigs =
  ListAppImageConfigs'
    { _laicSortOrder = Nothing,
      _laicNextToken = Nothing,
      _laicNameContains = Nothing,
      _laicMaxResults = Nothing,
      _laicModifiedTimeBefore = Nothing,
      _laicCreationTimeBefore = Nothing,
      _laicSortBy = Nothing,
      _laicCreationTimeAfter = Nothing,
      _laicModifiedTimeAfter = Nothing
    }

-- | The sort order. The default value is @Descending@ .
laicSortOrder :: Lens' ListAppImageConfigs (Maybe SortOrder)
laicSortOrder = lens _laicSortOrder (\s a -> s {_laicSortOrder = a})

-- | If the previous call to @ListImages@ didn't return the full set of AppImageConfigs, the call returns a token for getting the next set of AppImageConfigs.
laicNextToken :: Lens' ListAppImageConfigs (Maybe Text)
laicNextToken = lens _laicNextToken (\s a -> s {_laicNextToken = a})

-- | A filter that returns only AppImageConfigs whose name contains the specified string.
laicNameContains :: Lens' ListAppImageConfigs (Maybe Text)
laicNameContains = lens _laicNameContains (\s a -> s {_laicNameContains = a})

-- | The maximum number of AppImageConfigs to return in the response. The default value is 10.
laicMaxResults :: Lens' ListAppImageConfigs (Maybe Natural)
laicMaxResults = lens _laicMaxResults (\s a -> s {_laicMaxResults = a}) . mapping _Nat

-- | A filter that returns only AppImageConfigs modified on or before the specified time.
laicModifiedTimeBefore :: Lens' ListAppImageConfigs (Maybe UTCTime)
laicModifiedTimeBefore = lens _laicModifiedTimeBefore (\s a -> s {_laicModifiedTimeBefore = a}) . mapping _Time

-- | A filter that returns only AppImageConfigs created on or before the specified time.
laicCreationTimeBefore :: Lens' ListAppImageConfigs (Maybe UTCTime)
laicCreationTimeBefore = lens _laicCreationTimeBefore (\s a -> s {_laicCreationTimeBefore = a}) . mapping _Time

-- | The property used to sort results. The default value is @CreationTime@ .
laicSortBy :: Lens' ListAppImageConfigs (Maybe AppImageConfigSortKey)
laicSortBy = lens _laicSortBy (\s a -> s {_laicSortBy = a})

-- | A filter that returns only AppImageConfigs created on or after the specified time.
laicCreationTimeAfter :: Lens' ListAppImageConfigs (Maybe UTCTime)
laicCreationTimeAfter = lens _laicCreationTimeAfter (\s a -> s {_laicCreationTimeAfter = a}) . mapping _Time

-- | A filter that returns only AppImageConfigs modified on or after the specified time.
laicModifiedTimeAfter :: Lens' ListAppImageConfigs (Maybe UTCTime)
laicModifiedTimeAfter = lens _laicModifiedTimeAfter (\s a -> s {_laicModifiedTimeAfter = a}) . mapping _Time

instance AWSPager ListAppImageConfigs where
  page rq rs
    | stop (rs ^. laicrrsNextToken) = Nothing
    | stop (rs ^. laicrrsAppImageConfigs) = Nothing
    | otherwise =
      Just $ rq & laicNextToken .~ rs ^. laicrrsNextToken

instance AWSRequest ListAppImageConfigs where
  type
    Rs ListAppImageConfigs =
      ListAppImageConfigsResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListAppImageConfigsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "AppImageConfigs" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListAppImageConfigs

instance NFData ListAppImageConfigs

instance ToHeaders ListAppImageConfigs where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.ListAppImageConfigs" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListAppImageConfigs where
  toJSON ListAppImageConfigs' {..} =
    object
      ( catMaybes
          [ ("SortOrder" .=) <$> _laicSortOrder,
            ("NextToken" .=) <$> _laicNextToken,
            ("NameContains" .=) <$> _laicNameContains,
            ("MaxResults" .=) <$> _laicMaxResults,
            ("ModifiedTimeBefore" .=)
              <$> _laicModifiedTimeBefore,
            ("CreationTimeBefore" .=)
              <$> _laicCreationTimeBefore,
            ("SortBy" .=) <$> _laicSortBy,
            ("CreationTimeAfter" .=) <$> _laicCreationTimeAfter,
            ("ModifiedTimeAfter" .=) <$> _laicModifiedTimeAfter
          ]
      )

instance ToPath ListAppImageConfigs where
  toPath = const "/"

instance ToQuery ListAppImageConfigs where
  toQuery = const mempty

-- | /See:/ 'listAppImageConfigsResponse' smart constructor.
data ListAppImageConfigsResponse = ListAppImageConfigsResponse'
  { _laicrrsNextToken ::
      !(Maybe Text),
    _laicrrsAppImageConfigs ::
      !( Maybe
           [AppImageConfigDetails]
       ),
    _laicrrsResponseStatus ::
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

-- | Creates a value of 'ListAppImageConfigsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'laicrrsNextToken' - A token for getting the next set of AppImageConfigs, if there are any.
--
-- * 'laicrrsAppImageConfigs' - A list of AppImageConfigs and their properties.
--
-- * 'laicrrsResponseStatus' - -- | The response status code.
listAppImageConfigsResponse ::
  -- | 'laicrrsResponseStatus'
  Int ->
  ListAppImageConfigsResponse
listAppImageConfigsResponse pResponseStatus_ =
  ListAppImageConfigsResponse'
    { _laicrrsNextToken =
        Nothing,
      _laicrrsAppImageConfigs = Nothing,
      _laicrrsResponseStatus = pResponseStatus_
    }

-- | A token for getting the next set of AppImageConfigs, if there are any.
laicrrsNextToken :: Lens' ListAppImageConfigsResponse (Maybe Text)
laicrrsNextToken = lens _laicrrsNextToken (\s a -> s {_laicrrsNextToken = a})

-- | A list of AppImageConfigs and their properties.
laicrrsAppImageConfigs :: Lens' ListAppImageConfigsResponse [AppImageConfigDetails]
laicrrsAppImageConfigs = lens _laicrrsAppImageConfigs (\s a -> s {_laicrrsAppImageConfigs = a}) . _Default . _Coerce

-- | -- | The response status code.
laicrrsResponseStatus :: Lens' ListAppImageConfigsResponse Int
laicrrsResponseStatus = lens _laicrrsResponseStatus (\s a -> s {_laicrrsResponseStatus = a})

instance NFData ListAppImageConfigsResponse
