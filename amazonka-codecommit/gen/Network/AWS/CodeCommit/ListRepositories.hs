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
-- Module      : Network.AWS.CodeCommit.ListRepositories
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about one or more repositories.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CodeCommit.ListRepositories
  ( -- * Creating a Request
    listRepositories,
    ListRepositories,

    -- * Request Lenses
    lrNextToken,
    lrSortBy,
    lrOrder,

    -- * Destructuring the Response
    listRepositoriesResponse,
    ListRepositoriesResponse,

    -- * Response Lenses
    lrrrsNextToken,
    lrrrsRepositories,
    lrrrsResponseStatus,
  )
where

import Network.AWS.CodeCommit.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a list repositories operation.
--
--
--
-- /See:/ 'listRepositories' smart constructor.
data ListRepositories = ListRepositories'
  { _lrNextToken ::
      !(Maybe Text),
    _lrSortBy :: !(Maybe SortByEnum),
    _lrOrder :: !(Maybe OrderEnum)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListRepositories' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrNextToken' - An enumeration token that allows the operation to batch the results of the operation. Batch sizes are 1,000 for list repository operations. When the client sends the token back to AWS CodeCommit, another page of 1,000 records is retrieved.
--
-- * 'lrSortBy' - The criteria used to sort the results of a list repositories operation.
--
-- * 'lrOrder' - The order in which to sort the results of a list repositories operation.
listRepositories ::
  ListRepositories
listRepositories =
  ListRepositories'
    { _lrNextToken = Nothing,
      _lrSortBy = Nothing,
      _lrOrder = Nothing
    }

-- | An enumeration token that allows the operation to batch the results of the operation. Batch sizes are 1,000 for list repository operations. When the client sends the token back to AWS CodeCommit, another page of 1,000 records is retrieved.
lrNextToken :: Lens' ListRepositories (Maybe Text)
lrNextToken = lens _lrNextToken (\s a -> s {_lrNextToken = a})

-- | The criteria used to sort the results of a list repositories operation.
lrSortBy :: Lens' ListRepositories (Maybe SortByEnum)
lrSortBy = lens _lrSortBy (\s a -> s {_lrSortBy = a})

-- | The order in which to sort the results of a list repositories operation.
lrOrder :: Lens' ListRepositories (Maybe OrderEnum)
lrOrder = lens _lrOrder (\s a -> s {_lrOrder = a})

instance AWSPager ListRepositories where
  page rq rs
    | stop (rs ^. lrrrsNextToken) = Nothing
    | stop (rs ^. lrrrsRepositories) = Nothing
    | otherwise =
      Just $ rq & lrNextToken .~ rs ^. lrrrsNextToken

instance AWSRequest ListRepositories where
  type Rs ListRepositories = ListRepositoriesResponse
  request = postJSON codeCommit
  response =
    receiveJSON
      ( \s h x ->
          ListRepositoriesResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "repositories" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListRepositories

instance NFData ListRepositories

instance ToHeaders ListRepositories where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeCommit_20150413.ListRepositories" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListRepositories where
  toJSON ListRepositories' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _lrNextToken,
            ("sortBy" .=) <$> _lrSortBy,
            ("order" .=) <$> _lrOrder
          ]
      )

instance ToPath ListRepositories where
  toPath = const "/"

instance ToQuery ListRepositories where
  toQuery = const mempty

-- | Represents the output of a list repositories operation.
--
--
--
-- /See:/ 'listRepositoriesResponse' smart constructor.
data ListRepositoriesResponse = ListRepositoriesResponse'
  { _lrrrsNextToken ::
      !(Maybe Text),
    _lrrrsRepositories ::
      !( Maybe
           [RepositoryNameIdPair]
       ),
    _lrrrsResponseStatus ::
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

-- | Creates a value of 'ListRepositoriesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lrrrsNextToken' - An enumeration token that allows the operation to batch the results of the operation. Batch sizes are 1,000 for list repository operations. When the client sends the token back to AWS CodeCommit, another page of 1,000 records is retrieved.
--
-- * 'lrrrsRepositories' - Lists the repositories called by the list repositories operation.
--
-- * 'lrrrsResponseStatus' - -- | The response status code.
listRepositoriesResponse ::
  -- | 'lrrrsResponseStatus'
  Int ->
  ListRepositoriesResponse
listRepositoriesResponse pResponseStatus_ =
  ListRepositoriesResponse'
    { _lrrrsNextToken =
        Nothing,
      _lrrrsRepositories = Nothing,
      _lrrrsResponseStatus = pResponseStatus_
    }

-- | An enumeration token that allows the operation to batch the results of the operation. Batch sizes are 1,000 for list repository operations. When the client sends the token back to AWS CodeCommit, another page of 1,000 records is retrieved.
lrrrsNextToken :: Lens' ListRepositoriesResponse (Maybe Text)
lrrrsNextToken = lens _lrrrsNextToken (\s a -> s {_lrrrsNextToken = a})

-- | Lists the repositories called by the list repositories operation.
lrrrsRepositories :: Lens' ListRepositoriesResponse [RepositoryNameIdPair]
lrrrsRepositories = lens _lrrrsRepositories (\s a -> s {_lrrrsRepositories = a}) . _Default . _Coerce

-- | -- | The response status code.
lrrrsResponseStatus :: Lens' ListRepositoriesResponse Int
lrrrsResponseStatus = lens _lrrrsResponseStatus (\s a -> s {_lrrrsResponseStatus = a})

instance NFData ListRepositoriesResponse
