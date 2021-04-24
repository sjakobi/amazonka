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
-- Module      : Network.AWS.CodeCommit.ListPullRequests
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns a list of pull requests for a specified repository. The return list can be refined by pull request status or pull request author ARN.
--
--
--
-- This operation returns paginated results.
module Network.AWS.CodeCommit.ListPullRequests
  ( -- * Creating a Request
    listPullRequests,
    ListPullRequests,

    -- * Request Lenses
    lprNextToken,
    lprMaxResults,
    lprPullRequestStatus,
    lprAuthorARN,
    lprRepositoryName,

    -- * Destructuring the Response
    listPullRequestsResponse,
    ListPullRequestsResponse,

    -- * Response Lenses
    lprrrsNextToken,
    lprrrsResponseStatus,
    lprrrsPullRequestIds,
  )
where

import Network.AWS.CodeCommit.Types
import Network.AWS.Lens
import Network.AWS.Pager
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'listPullRequests' smart constructor.
data ListPullRequests = ListPullRequests'
  { _lprNextToken ::
      !(Maybe Text),
    _lprMaxResults :: !(Maybe Int),
    _lprPullRequestStatus ::
      !(Maybe PullRequestStatusEnum),
    _lprAuthorARN :: !(Maybe Text),
    _lprRepositoryName :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'ListPullRequests' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lprNextToken' - An enumeration token that, when provided in a request, returns the next batch of the results.
--
-- * 'lprMaxResults' - A non-zero, non-negative integer used to limit the number of returned results.
--
-- * 'lprPullRequestStatus' - Optional. The status of the pull request. If used, this refines the results to the pull requests that match the specified status.
--
-- * 'lprAuthorARN' - Optional. The Amazon Resource Name (ARN) of the user who created the pull request. If used, this filters the results to pull requests created by that user.
--
-- * 'lprRepositoryName' - The name of the repository for which you want to list pull requests.
listPullRequests ::
  -- | 'lprRepositoryName'
  Text ->
  ListPullRequests
listPullRequests pRepositoryName_ =
  ListPullRequests'
    { _lprNextToken = Nothing,
      _lprMaxResults = Nothing,
      _lprPullRequestStatus = Nothing,
      _lprAuthorARN = Nothing,
      _lprRepositoryName = pRepositoryName_
    }

-- | An enumeration token that, when provided in a request, returns the next batch of the results.
lprNextToken :: Lens' ListPullRequests (Maybe Text)
lprNextToken = lens _lprNextToken (\s a -> s {_lprNextToken = a})

-- | A non-zero, non-negative integer used to limit the number of returned results.
lprMaxResults :: Lens' ListPullRequests (Maybe Int)
lprMaxResults = lens _lprMaxResults (\s a -> s {_lprMaxResults = a})

-- | Optional. The status of the pull request. If used, this refines the results to the pull requests that match the specified status.
lprPullRequestStatus :: Lens' ListPullRequests (Maybe PullRequestStatusEnum)
lprPullRequestStatus = lens _lprPullRequestStatus (\s a -> s {_lprPullRequestStatus = a})

-- | Optional. The Amazon Resource Name (ARN) of the user who created the pull request. If used, this filters the results to pull requests created by that user.
lprAuthorARN :: Lens' ListPullRequests (Maybe Text)
lprAuthorARN = lens _lprAuthorARN (\s a -> s {_lprAuthorARN = a})

-- | The name of the repository for which you want to list pull requests.
lprRepositoryName :: Lens' ListPullRequests Text
lprRepositoryName = lens _lprRepositoryName (\s a -> s {_lprRepositoryName = a})

instance AWSPager ListPullRequests where
  page rq rs
    | stop (rs ^. lprrrsNextToken) = Nothing
    | stop (rs ^. lprrrsPullRequestIds) = Nothing
    | otherwise =
      Just $ rq & lprNextToken .~ rs ^. lprrrsNextToken

instance AWSRequest ListPullRequests where
  type Rs ListPullRequests = ListPullRequestsResponse
  request = postJSON codeCommit
  response =
    receiveJSON
      ( \s h x ->
          ListPullRequestsResponse'
            <$> (x .?> "nextToken")
            <*> (pure (fromEnum s))
            <*> (x .?> "pullRequestIds" .!@ mempty)
      )

instance Hashable ListPullRequests

instance NFData ListPullRequests

instance ToHeaders ListPullRequests where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeCommit_20150413.ListPullRequests" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON ListPullRequests where
  toJSON ListPullRequests' {..} =
    object
      ( catMaybes
          [ ("nextToken" .=) <$> _lprNextToken,
            ("maxResults" .=) <$> _lprMaxResults,
            ("pullRequestStatus" .=) <$> _lprPullRequestStatus,
            ("authorArn" .=) <$> _lprAuthorARN,
            Just ("repositoryName" .= _lprRepositoryName)
          ]
      )

instance ToPath ListPullRequests where
  toPath = const "/"

instance ToQuery ListPullRequests where
  toQuery = const mempty

-- | /See:/ 'listPullRequestsResponse' smart constructor.
data ListPullRequestsResponse = ListPullRequestsResponse'
  { _lprrrsNextToken ::
      !(Maybe Text),
    _lprrrsResponseStatus ::
      !Int,
    _lprrrsPullRequestIds ::
      ![Text]
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'ListPullRequestsResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'lprrrsNextToken' - An enumeration token that allows the operation to batch the next results of the operation.
--
-- * 'lprrrsResponseStatus' - -- | The response status code.
--
-- * 'lprrrsPullRequestIds' - The system-generated IDs of the pull requests.
listPullRequestsResponse ::
  -- | 'lprrrsResponseStatus'
  Int ->
  ListPullRequestsResponse
listPullRequestsResponse pResponseStatus_ =
  ListPullRequestsResponse'
    { _lprrrsNextToken =
        Nothing,
      _lprrrsResponseStatus = pResponseStatus_,
      _lprrrsPullRequestIds = mempty
    }

-- | An enumeration token that allows the operation to batch the next results of the operation.
lprrrsNextToken :: Lens' ListPullRequestsResponse (Maybe Text)
lprrrsNextToken = lens _lprrrsNextToken (\s a -> s {_lprrrsNextToken = a})

-- | -- | The response status code.
lprrrsResponseStatus :: Lens' ListPullRequestsResponse Int
lprrrsResponseStatus = lens _lprrrsResponseStatus (\s a -> s {_lprrrsResponseStatus = a})

-- | The system-generated IDs of the pull requests.
lprrrsPullRequestIds :: Lens' ListPullRequestsResponse [Text]
lprrrsPullRequestIds = lens _lprrrsPullRequestIds (\s a -> s {_lprrrsPullRequestIds = a}) . _Coerce

instance NFData ListPullRequestsResponse
