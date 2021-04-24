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
-- Module      : Network.AWS.CodeCommit.CreatePullRequest
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a pull request in the specified repository.
module Network.AWS.CodeCommit.CreatePullRequest
  ( -- * Creating a Request
    createPullRequest,
    CreatePullRequest,

    -- * Request Lenses
    cprDescription,
    cprClientRequestToken,
    cprTitle,
    cprTargets,

    -- * Destructuring the Response
    createPullRequestResponse,
    CreatePullRequestResponse,

    -- * Response Lenses
    cprrrsResponseStatus,
    cprrrsPullRequest,
  )
where

import Network.AWS.CodeCommit.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'createPullRequest' smart constructor.
data CreatePullRequest = CreatePullRequest'
  { _cprDescription ::
      !(Maybe Text),
    _cprClientRequestToken ::
      !(Maybe Text),
    _cprTitle :: !Text,
    _cprTargets :: ![Target]
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreatePullRequest' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cprDescription' - A description of the pull request.
--
-- * 'cprClientRequestToken' - A unique, client-generated idempotency token that, when provided in a request, ensures the request cannot be repeated with a changed parameter. If a request is received with the same parameters and a token is included, the request returns information about the initial request that used that token.
--
-- * 'cprTitle' - The title of the pull request. This title is used to identify the pull request to other users in the repository.
--
-- * 'cprTargets' - The targets for the pull request, including the source of the code to be reviewed (the source branch) and the destination where the creator of the pull request intends the code to be merged after the pull request is closed (the destination branch).
createPullRequest ::
  -- | 'cprTitle'
  Text ->
  CreatePullRequest
createPullRequest pTitle_ =
  CreatePullRequest'
    { _cprDescription = Nothing,
      _cprClientRequestToken = Nothing,
      _cprTitle = pTitle_,
      _cprTargets = mempty
    }

-- | A description of the pull request.
cprDescription :: Lens' CreatePullRequest (Maybe Text)
cprDescription = lens _cprDescription (\s a -> s {_cprDescription = a})

-- | A unique, client-generated idempotency token that, when provided in a request, ensures the request cannot be repeated with a changed parameter. If a request is received with the same parameters and a token is included, the request returns information about the initial request that used that token.
cprClientRequestToken :: Lens' CreatePullRequest (Maybe Text)
cprClientRequestToken = lens _cprClientRequestToken (\s a -> s {_cprClientRequestToken = a})

-- | The title of the pull request. This title is used to identify the pull request to other users in the repository.
cprTitle :: Lens' CreatePullRequest Text
cprTitle = lens _cprTitle (\s a -> s {_cprTitle = a})

-- | The targets for the pull request, including the source of the code to be reviewed (the source branch) and the destination where the creator of the pull request intends the code to be merged after the pull request is closed (the destination branch).
cprTargets :: Lens' CreatePullRequest [Target]
cprTargets = lens _cprTargets (\s a -> s {_cprTargets = a}) . _Coerce

instance AWSRequest CreatePullRequest where
  type Rs CreatePullRequest = CreatePullRequestResponse
  request = postJSON codeCommit
  response =
    receiveJSON
      ( \s h x ->
          CreatePullRequestResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "pullRequest")
      )

instance Hashable CreatePullRequest

instance NFData CreatePullRequest

instance ToHeaders CreatePullRequest where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeCommit_20150413.CreatePullRequest" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreatePullRequest where
  toJSON CreatePullRequest' {..} =
    object
      ( catMaybes
          [ ("description" .=) <$> _cprDescription,
            ("clientRequestToken" .=) <$> _cprClientRequestToken,
            Just ("title" .= _cprTitle),
            Just ("targets" .= _cprTargets)
          ]
      )

instance ToPath CreatePullRequest where
  toPath = const "/"

instance ToQuery CreatePullRequest where
  toQuery = const mempty

-- | /See:/ 'createPullRequestResponse' smart constructor.
data CreatePullRequestResponse = CreatePullRequestResponse'
  { _cprrrsResponseStatus ::
      !Int,
    _cprrrsPullRequest ::
      !PullRequest
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'CreatePullRequestResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'cprrrsResponseStatus' - -- | The response status code.
--
-- * 'cprrrsPullRequest' - Information about the newly created pull request.
createPullRequestResponse ::
  -- | 'cprrrsResponseStatus'
  Int ->
  -- | 'cprrrsPullRequest'
  PullRequest ->
  CreatePullRequestResponse
createPullRequestResponse
  pResponseStatus_
  pPullRequest_ =
    CreatePullRequestResponse'
      { _cprrrsResponseStatus =
          pResponseStatus_,
        _cprrrsPullRequest = pPullRequest_
      }

-- | -- | The response status code.
cprrrsResponseStatus :: Lens' CreatePullRequestResponse Int
cprrrsResponseStatus = lens _cprrrsResponseStatus (\s a -> s {_cprrrsResponseStatus = a})

-- | Information about the newly created pull request.
cprrrsPullRequest :: Lens' CreatePullRequestResponse PullRequest
cprrrsPullRequest = lens _cprrrsPullRequest (\s a -> s {_cprrrsPullRequest = a})

instance NFData CreatePullRequestResponse
