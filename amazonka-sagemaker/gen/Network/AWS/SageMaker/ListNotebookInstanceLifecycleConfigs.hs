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
-- Module      : Network.AWS.SageMaker.ListNotebookInstanceLifecycleConfigs
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Lists notebook instance lifestyle configurations created with the 'CreateNotebookInstanceLifecycleConfig' API.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListNotebookInstanceLifecycleConfigs
  ( -- * Creating a Request
    listNotebookInstanceLifecycleConfigs,
    ListNotebookInstanceLifecycleConfigs,

    -- * Request Lenses
    lnilcLastModifiedTimeBefore,
    lnilcSortOrder,
    lnilcNextToken,
    lnilcNameContains,
    lnilcMaxResults,
    lnilcCreationTimeBefore,
    lnilcLastModifiedTimeAfter,
    lnilcSortBy,
    lnilcCreationTimeAfter,

    -- * Destructuring the Response
    listNotebookInstanceLifecycleConfigsResponse,
    ListNotebookInstanceLifecycleConfigsResponse,

    -- * Response Lenses
    lnilcrrsNextToken,
    lnilcrrsNotebookInstanceLifecycleConfigs,
    lnilcrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listNotebookInstanceLifecycleConfigs' smart constructor.
data ListNotebookInstanceLifecycleConfigs = ListNotebookInstanceLifecycleConfigs'
  { _lnilcLastModifiedTimeBefore ::
      !( Maybe
           POSIX
       ),
    _lnilcSortOrder ::
      !( Maybe
           NotebookInstanceLifecycleConfigSortOrder
       ),
    _lnilcNextToken ::
      !( Maybe
           Text
       ),
    _lnilcNameContains ::
      !( Maybe
           Text
       ),
    _lnilcMaxResults ::
      !( Maybe
           Nat
       ),
    _lnilcCreationTimeBefore ::
      !( Maybe
           POSIX
       ),
    _lnilcLastModifiedTimeAfter ::
      !( Maybe
           POSIX
       ),
    _lnilcSortBy ::
      !( Maybe
           NotebookInstanceLifecycleConfigSortKey
       ),
    _lnilcCreationTimeAfter ::
      !( Maybe
           POSIX
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

-- | Creates a value of 'ListNotebookInstanceLifecycleConfigs' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lnilcLastModifiedTimeBefore' - A filter that returns only lifecycle configurations that were modified before the specified time (timestamp).
--
-- * 'lnilcSortOrder' - The sort order for results.
--
-- * 'lnilcNextToken' - If the result of a @ListNotebookInstanceLifecycleConfigs@ request was truncated, the response includes a @NextToken@ . To get the next set of lifecycle configurations, use the token in the next request.
--
-- * 'lnilcNameContains' - A string in the lifecycle configuration name. This filter returns only lifecycle configurations whose name contains the specified string.
--
-- * 'lnilcMaxResults' - The maximum number of lifecycle configurations to return in the response.
--
-- * 'lnilcCreationTimeBefore' - A filter that returns only lifecycle configurations that were created before the specified time (timestamp).
--
-- * 'lnilcLastModifiedTimeAfter' - A filter that returns only lifecycle configurations that were modified after the specified time (timestamp).
--
-- * 'lnilcSortBy' - Sorts the list of results. The default is @CreationTime@ .
--
-- * 'lnilcCreationTimeAfter' - A filter that returns only lifecycle configurations that were created after the specified time (timestamp).
listNotebookInstanceLifecycleConfigs ::
  ListNotebookInstanceLifecycleConfigs
listNotebookInstanceLifecycleConfigs =
  ListNotebookInstanceLifecycleConfigs'
    { _lnilcLastModifiedTimeBefore =
        Nothing,
      _lnilcSortOrder = Nothing,
      _lnilcNextToken = Nothing,
      _lnilcNameContains = Nothing,
      _lnilcMaxResults = Nothing,
      _lnilcCreationTimeBefore = Nothing,
      _lnilcLastModifiedTimeAfter = Nothing,
      _lnilcSortBy = Nothing,
      _lnilcCreationTimeAfter = Nothing
    }

-- | A filter that returns only lifecycle configurations that were modified before the specified time (timestamp).
lnilcLastModifiedTimeBefore :: Lens' ListNotebookInstanceLifecycleConfigs (Maybe UTCTime)
lnilcLastModifiedTimeBefore = lens _lnilcLastModifiedTimeBefore (\s a -> s {_lnilcLastModifiedTimeBefore = a}) . mapping _Time

-- | The sort order for results.
lnilcSortOrder :: Lens' ListNotebookInstanceLifecycleConfigs (Maybe NotebookInstanceLifecycleConfigSortOrder)
lnilcSortOrder = lens _lnilcSortOrder (\s a -> s {_lnilcSortOrder = a})

-- | If the result of a @ListNotebookInstanceLifecycleConfigs@ request was truncated, the response includes a @NextToken@ . To get the next set of lifecycle configurations, use the token in the next request.
lnilcNextToken :: Lens' ListNotebookInstanceLifecycleConfigs (Maybe Text)
lnilcNextToken = lens _lnilcNextToken (\s a -> s {_lnilcNextToken = a})

-- | A string in the lifecycle configuration name. This filter returns only lifecycle configurations whose name contains the specified string.
lnilcNameContains :: Lens' ListNotebookInstanceLifecycleConfigs (Maybe Text)
lnilcNameContains = lens _lnilcNameContains (\s a -> s {_lnilcNameContains = a})

-- | The maximum number of lifecycle configurations to return in the response.
lnilcMaxResults :: Lens' ListNotebookInstanceLifecycleConfigs (Maybe Natural)
lnilcMaxResults = lens _lnilcMaxResults (\s a -> s {_lnilcMaxResults = a}) . mapping _Nat

-- | A filter that returns only lifecycle configurations that were created before the specified time (timestamp).
lnilcCreationTimeBefore :: Lens' ListNotebookInstanceLifecycleConfigs (Maybe UTCTime)
lnilcCreationTimeBefore = lens _lnilcCreationTimeBefore (\s a -> s {_lnilcCreationTimeBefore = a}) . mapping _Time

-- | A filter that returns only lifecycle configurations that were modified after the specified time (timestamp).
lnilcLastModifiedTimeAfter :: Lens' ListNotebookInstanceLifecycleConfigs (Maybe UTCTime)
lnilcLastModifiedTimeAfter = lens _lnilcLastModifiedTimeAfter (\s a -> s {_lnilcLastModifiedTimeAfter = a}) . mapping _Time

-- | Sorts the list of results. The default is @CreationTime@ .
lnilcSortBy :: Lens' ListNotebookInstanceLifecycleConfigs (Maybe NotebookInstanceLifecycleConfigSortKey)
lnilcSortBy = lens _lnilcSortBy (\s a -> s {_lnilcSortBy = a})

-- | A filter that returns only lifecycle configurations that were created after the specified time (timestamp).
lnilcCreationTimeAfter :: Lens' ListNotebookInstanceLifecycleConfigs (Maybe UTCTime)
lnilcCreationTimeAfter = lens _lnilcCreationTimeAfter (\s a -> s {_lnilcCreationTimeAfter = a}) . mapping _Time

instance
  AWSPager
    ListNotebookInstanceLifecycleConfigs
  where
  page rq rs
    | stop (rs ^. lnilcrrsNextToken) = Nothing
    | stop
        (rs ^. lnilcrrsNotebookInstanceLifecycleConfigs) =
      Nothing
    | otherwise =
      Just $ rq & lnilcNextToken .~ rs ^. lnilcrrsNextToken

instance
  AWSRequest
    ListNotebookInstanceLifecycleConfigs
  where
  type
    Rs ListNotebookInstanceLifecycleConfigs =
      ListNotebookInstanceLifecycleConfigsResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListNotebookInstanceLifecycleConfigsResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "NotebookInstanceLifecycleConfigs" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance
  Hashable
    ListNotebookInstanceLifecycleConfigs

instance NFData ListNotebookInstanceLifecycleConfigs

instance
  ToHeaders
    ListNotebookInstanceLifecycleConfigs
  where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SageMaker.ListNotebookInstanceLifecycleConfigs" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListNotebookInstanceLifecycleConfigs where
  toJSON ListNotebookInstanceLifecycleConfigs' {..} =
    object
      ( catMaybes
          [ ("LastModifiedTimeBefore" .=)
              <$> _lnilcLastModifiedTimeBefore,
            ("SortOrder" .=) <$> _lnilcSortOrder,
            ("NextToken" .=) <$> _lnilcNextToken,
            ("NameContains" .=) <$> _lnilcNameContains,
            ("MaxResults" .=) <$> _lnilcMaxResults,
            ("CreationTimeBefore" .=)
              <$> _lnilcCreationTimeBefore,
            ("LastModifiedTimeAfter" .=)
              <$> _lnilcLastModifiedTimeAfter,
            ("SortBy" .=) <$> _lnilcSortBy,
            ("CreationTimeAfter" .=)
              <$> _lnilcCreationTimeAfter
          ]
      )

instance ToPath ListNotebookInstanceLifecycleConfigs where
  toPath = const "/"

instance ToQuery ListNotebookInstanceLifecycleConfigs where
  toQuery = const mempty

-- | /See:/ 'listNotebookInstanceLifecycleConfigsResponse' smart constructor.
data ListNotebookInstanceLifecycleConfigsResponse = ListNotebookInstanceLifecycleConfigsResponse'
  { _lnilcrrsNextToken ::
      !( Maybe
           Text
       ),
    _lnilcrrsNotebookInstanceLifecycleConfigs ::
      !( Maybe
           [NotebookInstanceLifecycleConfigSummary]
       ),
    _lnilcrrsResponseStatus ::
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

-- | Creates a value of 'ListNotebookInstanceLifecycleConfigsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lnilcrrsNextToken' - If the response is truncated, Amazon SageMaker returns this token. To get the next set of lifecycle configurations, use it in the next request.
--
-- * 'lnilcrrsNotebookInstanceLifecycleConfigs' - An array of @NotebookInstanceLifecycleConfiguration@ objects, each listing a lifecycle configuration.
--
-- * 'lnilcrrsResponseStatus' - -- | The response status code.
listNotebookInstanceLifecycleConfigsResponse ::
  -- | 'lnilcrrsResponseStatus'
  Int ->
  ListNotebookInstanceLifecycleConfigsResponse
listNotebookInstanceLifecycleConfigsResponse
  pResponseStatus_ =
    ListNotebookInstanceLifecycleConfigsResponse'
      { _lnilcrrsNextToken =
          Nothing,
        _lnilcrrsNotebookInstanceLifecycleConfigs =
          Nothing,
        _lnilcrrsResponseStatus =
          pResponseStatus_
      }

-- | If the response is truncated, Amazon SageMaker returns this token. To get the next set of lifecycle configurations, use it in the next request.
lnilcrrsNextToken :: Lens' ListNotebookInstanceLifecycleConfigsResponse (Maybe Text)
lnilcrrsNextToken = lens _lnilcrrsNextToken (\s a -> s {_lnilcrrsNextToken = a})

-- | An array of @NotebookInstanceLifecycleConfiguration@ objects, each listing a lifecycle configuration.
lnilcrrsNotebookInstanceLifecycleConfigs :: Lens' ListNotebookInstanceLifecycleConfigsResponse [NotebookInstanceLifecycleConfigSummary]
lnilcrrsNotebookInstanceLifecycleConfigs = lens _lnilcrrsNotebookInstanceLifecycleConfigs (\s a -> s {_lnilcrrsNotebookInstanceLifecycleConfigs = a}) . _Default . _Coerce

-- | -- | The response status code.
lnilcrrsResponseStatus :: Lens' ListNotebookInstanceLifecycleConfigsResponse Int
lnilcrrsResponseStatus = lens _lnilcrrsResponseStatus (\s a -> s {_lnilcrrsResponseStatus = a})

instance
  NFData
    ListNotebookInstanceLifecycleConfigsResponse
