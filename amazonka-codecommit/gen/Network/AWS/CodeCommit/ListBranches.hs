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
-- Module      : Network.AWS.CodeCommit.ListBranches
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets information about one or more branches in a repository.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CodeCommit.ListBranches
  ( -- * Creating a Request
    listBranches,
    ListBranches,

    -- * Request Lenses
    lbNextToken,
    lbRepositoryName,

    -- * Destructuring the Response
    listBranchesResponse,
    ListBranchesResponse,

    -- * Response Lenses
    lbrrsNextToken,
    lbrrsBranches,
    lbrrsResponseStatus,
  )
where

import Network.AWS.CodeCommit.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a list branches operation.
--
--
--
-- /See:/ 'listBranches' smart constructor.
data ListBranches = ListBranches'
  { _lbNextToken ::
      !(Maybe Text),
    _lbRepositoryName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListBranches' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbNextToken' - An enumeration token that allows the operation to batch the results.
--
-- * 'lbRepositoryName' - The name of the repository that contains the branches.
listBranches ::
  -- | 'lbRepositoryName'
  Text ->
  ListBranches
listBranches pRepositoryName_ =
  ListBranches'
    { _lbNextToken = Nothing,
      _lbRepositoryName = pRepositoryName_
    }

-- | An enumeration token that allows the operation to batch the results.
lbNextToken :: Lens' ListBranches (Maybe Text)
lbNextToken = lens _lbNextToken (\s a -> s {_lbNextToken = a})

-- | The name of the repository that contains the branches.
lbRepositoryName :: Lens' ListBranches Text
lbRepositoryName = lens _lbRepositoryName (\s a -> s {_lbRepositoryName = a})

instance AWSPager ListBranches where
  page rq rs
    | stop (rs ^. lbrrsNextToken) = Nothing
    | stop (rs ^. lbrrsBranches) = Nothing
    | otherwise =
      Just $ rq & lbNextToken .~ rs ^. lbrrsNextToken

instance AWSRequest ListBranches where
  type Rs ListBranches = ListBranchesResponse
  request = postJSON codeCommit
  response =
    receiveJSON
      ( \s h x ->
          ListBranchesResponse'
            <$> (x .?> "nextToken")
            <*> (x .?> "branches" .!@ mempty)
            <*> (pure (fromEnum s))
      )

instance Hashable ListBranches

instance NFData ListBranches

instance ToHeaders ListBranches where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("CodeCommit_20150413.ListBranches" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListBranches where
  toJSON ListBranches' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _lbNextToken,
            Just ("repositoryName" .= _lbRepositoryName)
          ]
      )

instance ToPath ListBranches where
  toPath = const "/"

instance ToQuery ListBranches where
  toQuery = const mempty

-- | Represents the output of a list branches operation.
--
--
--
-- /See:/ 'listBranchesResponse' smart constructor.
data ListBranchesResponse = ListBranchesResponse'
  { _lbrrsNextToken ::
      !(Maybe Text),
    _lbrrsBranches ::
      !(Maybe [Text]),
    _lbrrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListBranchesResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lbrrsNextToken' - An enumeration token that returns the batch of the results.
--
-- * 'lbrrsBranches' - The list of branch names.
--
-- * 'lbrrsResponseStatus' - -- | The response status code.
listBranchesResponse ::
  -- | 'lbrrsResponseStatus'
  Int ->
  ListBranchesResponse
listBranchesResponse pResponseStatus_ =
  ListBranchesResponse'
    { _lbrrsNextToken = Nothing,
      _lbrrsBranches = Nothing,
      _lbrrsResponseStatus = pResponseStatus_
    }

-- | An enumeration token that returns the batch of the results.
lbrrsNextToken :: Lens' ListBranchesResponse (Maybe Text)
lbrrsNextToken = lens _lbrrsNextToken (\s a -> s {_lbrrsNextToken = a})

-- | The list of branch names.
lbrrsBranches :: Lens' ListBranchesResponse [Text]
lbrrsBranches = lens _lbrrsBranches (\s a -> s {_lbrrsBranches = a}) . _Default . _Coerce

-- | -- | The response status code.
lbrrsResponseStatus :: Lens' ListBranchesResponse Int
lbrrsResponseStatus = lens _lbrrsResponseStatus (\s a -> s {_lbrrsResponseStatus = a})

instance NFData ListBranchesResponse
