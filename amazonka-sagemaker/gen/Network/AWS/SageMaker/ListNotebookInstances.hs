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
-- Module      : Network.AWS.SageMaker.ListNotebookInstances
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of the Amazon SageMaker notebook instances in the requester's account in an AWS Region.
--
--
--
-- This operation returns paginated results.
module Network.AWS.SageMaker.ListNotebookInstances
  ( -- * Creating a Request
    listNotebookInstances,
    ListNotebookInstances,

    -- * Request Lenses
    lniLastModifiedTimeBefore,
    lniSortOrder,
    lniNextToken,
    lniNameContains,
    lniAdditionalCodeRepositoryEquals,
    lniMaxResults,
    lniCreationTimeBefore,
    lniLastModifiedTimeAfter,
    lniDefaultCodeRepositoryContains,
    lniSortBy,
    lniStatusEquals,
    lniNotebookInstanceLifecycleConfigNameContains,
    lniCreationTimeAfter,

    -- * Destructuring the Response
    listNotebookInstancesResponse,
    ListNotebookInstancesResponse,

    -- * Response Lenses
    lnirrsNextToken,
    lnirrsNotebookInstances,
    lnirrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'listNotebookInstances' smart constructor.
data ListNotebookInstances = ListNotebookInstances'
  { _lniLastModifiedTimeBefore ::
      !(Maybe POSIX),
    _lniSortOrder ::
      !( Maybe
           NotebookInstanceSortOrder
       ),
    _lniNextToken ::
      !(Maybe Text),
    _lniNameContains ::
      !(Maybe Text),
    _lniAdditionalCodeRepositoryEquals ::
      !(Maybe Text),
    _lniMaxResults ::
      !(Maybe Nat),
    _lniCreationTimeBefore ::
      !(Maybe POSIX),
    _lniLastModifiedTimeAfter ::
      !(Maybe POSIX),
    _lniDefaultCodeRepositoryContains ::
      !(Maybe Text),
    _lniSortBy ::
      !( Maybe
           NotebookInstanceSortKey
       ),
    _lniStatusEquals ::
      !( Maybe
           NotebookInstanceStatus
       ),
    _lniNotebookInstanceLifecycleConfigNameContains ::
      !(Maybe Text),
    _lniCreationTimeAfter ::
      !(Maybe POSIX)
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListNotebookInstances' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lniLastModifiedTimeBefore' - A filter that returns only notebook instances that were modified before the specified time (timestamp).
--
-- * 'lniSortOrder' - The sort order for results.
--
-- * 'lniNextToken' - If the previous call to the @ListNotebookInstances@ is truncated, the response includes a @NextToken@ . You can use this token in your subsequent @ListNotebookInstances@ request to fetch the next set of notebook instances.
--
-- * 'lniNameContains' - A string in the notebook instances' name. This filter returns only notebook instances whose name contains the specified string.
--
-- * 'lniAdditionalCodeRepositoryEquals' - A filter that returns only notebook instances with associated with the specified git repository.
--
-- * 'lniMaxResults' - The maximum number of notebook instances to return.
--
-- * 'lniCreationTimeBefore' - A filter that returns only notebook instances that were created before the specified time (timestamp).
--
-- * 'lniLastModifiedTimeAfter' - A filter that returns only notebook instances that were modified after the specified time (timestamp).
--
-- * 'lniDefaultCodeRepositoryContains' - A string in the name or URL of a Git repository associated with this notebook instance. This filter returns only notebook instances associated with a git repository with a name that contains the specified string.
--
-- * 'lniSortBy' - The field to sort results by. The default is @Name@ .
--
-- * 'lniStatusEquals' - A filter that returns only notebook instances with the specified status.
--
-- * 'lniNotebookInstanceLifecycleConfigNameContains' - A string in the name of a notebook instances lifecycle configuration associated with this notebook instance. This filter returns only notebook instances associated with a lifecycle configuration with a name that contains the specified string.
--
-- * 'lniCreationTimeAfter' - A filter that returns only notebook instances that were created after the specified time (timestamp).
listNotebookInstances ::
  ListNotebookInstances
listNotebookInstances =
  ListNotebookInstances'
    { _lniLastModifiedTimeBefore =
        Nothing,
      _lniSortOrder = Nothing,
      _lniNextToken = Nothing,
      _lniNameContains = Nothing,
      _lniAdditionalCodeRepositoryEquals = Nothing,
      _lniMaxResults = Nothing,
      _lniCreationTimeBefore = Nothing,
      _lniLastModifiedTimeAfter = Nothing,
      _lniDefaultCodeRepositoryContains = Nothing,
      _lniSortBy = Nothing,
      _lniStatusEquals = Nothing,
      _lniNotebookInstanceLifecycleConfigNameContains =
        Nothing,
      _lniCreationTimeAfter = Nothing
    }

-- | A filter that returns only notebook instances that were modified before the specified time (timestamp).
lniLastModifiedTimeBefore :: Lens' ListNotebookInstances (Maybe UTCTime)
lniLastModifiedTimeBefore = lens _lniLastModifiedTimeBefore (\s a -> s {_lniLastModifiedTimeBefore = a}) . mapping _Time

-- | The sort order for results.
lniSortOrder :: Lens' ListNotebookInstances (Maybe NotebookInstanceSortOrder)
lniSortOrder = lens _lniSortOrder (\s a -> s {_lniSortOrder = a})

-- | If the previous call to the @ListNotebookInstances@ is truncated, the response includes a @NextToken@ . You can use this token in your subsequent @ListNotebookInstances@ request to fetch the next set of notebook instances.
lniNextToken :: Lens' ListNotebookInstances (Maybe Text)
lniNextToken = lens _lniNextToken (\s a -> s {_lniNextToken = a})

-- | A string in the notebook instances' name. This filter returns only notebook instances whose name contains the specified string.
lniNameContains :: Lens' ListNotebookInstances (Maybe Text)
lniNameContains = lens _lniNameContains (\s a -> s {_lniNameContains = a})

-- | A filter that returns only notebook instances with associated with the specified git repository.
lniAdditionalCodeRepositoryEquals :: Lens' ListNotebookInstances (Maybe Text)
lniAdditionalCodeRepositoryEquals = lens _lniAdditionalCodeRepositoryEquals (\s a -> s {_lniAdditionalCodeRepositoryEquals = a})

-- | The maximum number of notebook instances to return.
lniMaxResults :: Lens' ListNotebookInstances (Maybe Natural)
lniMaxResults = lens _lniMaxResults (\s a -> s {_lniMaxResults = a}) . mapping _Nat

-- | A filter that returns only notebook instances that were created before the specified time (timestamp).
lniCreationTimeBefore :: Lens' ListNotebookInstances (Maybe UTCTime)
lniCreationTimeBefore = lens _lniCreationTimeBefore (\s a -> s {_lniCreationTimeBefore = a}) . mapping _Time

-- | A filter that returns only notebook instances that were modified after the specified time (timestamp).
lniLastModifiedTimeAfter :: Lens' ListNotebookInstances (Maybe UTCTime)
lniLastModifiedTimeAfter = lens _lniLastModifiedTimeAfter (\s a -> s {_lniLastModifiedTimeAfter = a}) . mapping _Time

-- | A string in the name or URL of a Git repository associated with this notebook instance. This filter returns only notebook instances associated with a git repository with a name that contains the specified string.
lniDefaultCodeRepositoryContains :: Lens' ListNotebookInstances (Maybe Text)
lniDefaultCodeRepositoryContains = lens _lniDefaultCodeRepositoryContains (\s a -> s {_lniDefaultCodeRepositoryContains = a})

-- | The field to sort results by. The default is @Name@ .
lniSortBy :: Lens' ListNotebookInstances (Maybe NotebookInstanceSortKey)
lniSortBy = lens _lniSortBy (\s a -> s {_lniSortBy = a})

-- | A filter that returns only notebook instances with the specified status.
lniStatusEquals :: Lens' ListNotebookInstances (Maybe NotebookInstanceStatus)
lniStatusEquals = lens _lniStatusEquals (\s a -> s {_lniStatusEquals = a})

-- | A string in the name of a notebook instances lifecycle configuration associated with this notebook instance. This filter returns only notebook instances associated with a lifecycle configuration with a name that contains the specified string.
lniNotebookInstanceLifecycleConfigNameContains :: Lens' ListNotebookInstances (Maybe Text)
lniNotebookInstanceLifecycleConfigNameContains = lens _lniNotebookInstanceLifecycleConfigNameContains (\s a -> s {_lniNotebookInstanceLifecycleConfigNameContains = a})

-- | A filter that returns only notebook instances that were created after the specified time (timestamp).
lniCreationTimeAfter :: Lens' ListNotebookInstances (Maybe UTCTime)
lniCreationTimeAfter = lens _lniCreationTimeAfter (\s a -> s {_lniCreationTimeAfter = a}) . mapping _Time

instance AWSPager ListNotebookInstances where
  page rq rs
    | stop (rs ^. lnirrsNextToken) = Nothing
    | stop (rs ^. lnirrsNotebookInstances) = Nothing
    | otherwise =
      Just $ rq & lniNextToken .~ rs ^. lnirrsNextToken

instance AWSRequest ListNotebookInstances where
  type
    Rs ListNotebookInstances =
      ListNotebookInstancesResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          ListNotebookInstancesResponse'
            <$> (x .?> "NextToken")
            <*> (x .?> "NotebookInstances" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListNotebookInstances

instance NFData ListNotebookInstances

instance ToHeaders ListNotebookInstances where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("SageMaker.ListNotebookInstances" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListNotebookInstances where
  toJSON ListNotebookInstances' {..} =
    object
      ( catMaybes
          [ ("LastModifiedTimeBefore" .=)
              <$> _lniLastModifiedTimeBefore,
            ("SortOrder" .=) <$> _lniSortOrder,
            ("NextToken" .=) <$> _lniNextToken,
            ("NameContains" .=) <$> _lniNameContains,
            ("AdditionalCodeRepositoryEquals" .=)
              <$> _lniAdditionalCodeRepositoryEquals,
            ("MaxResults" .=) <$> _lniMaxResults,
            ("CreationTimeBefore" .=) <$> _lniCreationTimeBefore,
            ("LastModifiedTimeAfter" .=)
              <$> _lniLastModifiedTimeAfter,
            ("DefaultCodeRepositoryContains" .=)
              <$> _lniDefaultCodeRepositoryContains,
            ("SortBy" .=) <$> _lniSortBy,
            ("StatusEquals" .=) <$> _lniStatusEquals,
            ("NotebookInstanceLifecycleConfigNameContains" .=)
              <$> _lniNotebookInstanceLifecycleConfigNameContains,
            ("CreationTimeAfter" .=) <$> _lniCreationTimeAfter
          ]
      )

instance ToPath ListNotebookInstances where
  toPath = const "/"

instance ToQuery ListNotebookInstances where
  toQuery = const mempty

-- | /See:/ 'listNotebookInstancesResponse' smart constructor.
data ListNotebookInstancesResponse = ListNotebookInstancesResponse'
  { _lnirrsNextToken ::
      !( Maybe
           Text
       ),
    _lnirrsNotebookInstances ::
      !( Maybe
           [NotebookInstanceSummary]
       ),
    _lnirrsResponseStatus ::
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

-- | Creates a value of 'ListNotebookInstancesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lnirrsNextToken' - If the response to the previous @ListNotebookInstances@ request was truncated, Amazon SageMaker returns this token. To retrieve the next set of notebook instances, use the token in the next request.
--
-- * 'lnirrsNotebookInstances' - An array of @NotebookInstanceSummary@ objects, one for each notebook instance.
--
-- * 'lnirrsResponseStatus' - -- | The response status code.
listNotebookInstancesResponse ::
  -- | 'lnirrsResponseStatus'
  Int ->
  ListNotebookInstancesResponse
listNotebookInstancesResponse pResponseStatus_ =
  ListNotebookInstancesResponse'
    { _lnirrsNextToken =
        Nothing,
      _lnirrsNotebookInstances = Nothing,
      _lnirrsResponseStatus = pResponseStatus_
    }

-- | If the response to the previous @ListNotebookInstances@ request was truncated, Amazon SageMaker returns this token. To retrieve the next set of notebook instances, use the token in the next request.
lnirrsNextToken :: Lens' ListNotebookInstancesResponse (Maybe Text)
lnirrsNextToken = lens _lnirrsNextToken (\s a -> s {_lnirrsNextToken = a})

-- | An array of @NotebookInstanceSummary@ objects, one for each notebook instance.
lnirrsNotebookInstances :: Lens' ListNotebookInstancesResponse [NotebookInstanceSummary]
lnirrsNotebookInstances = lens _lnirrsNotebookInstances (\s a -> s {_lnirrsNotebookInstances = a}) . _Default . _Coerce

-- | -- | The response status code.
lnirrsResponseStatus :: Lens' ListNotebookInstancesResponse Int
lnirrsResponseStatus = lens _lnirrsResponseStatus (\s a -> s {_lnirrsResponseStatus = a})

instance NFData ListNotebookInstancesResponse
