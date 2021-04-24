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
-- Module      : Network.AWS.CodeCommit.GetBranch
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns information about a repository branch, including its name and the last commit ID.
module Network.AWS.CodeCommit.GetBranch
  ( -- * Creating a Request
    getBranch,
    GetBranch,

    -- * Request Lenses
    gbbBranchName,
    gbbRepositoryName,

    -- * Destructuring the Response
    getBranchResponse,
    GetBranchResponse,

    -- * Response Lenses
    gbrbrsBranch,
    gbrbrsResponseStatus,
  )
where

import Network.AWS.CodeCommit.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a get branch operation.
--
--
--
-- /See:/ 'getBranch' smart constructor.
data GetBranch = GetBranch'
  { _gbbBranchName ::
      !(Maybe Text),
    _gbbRepositoryName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetBranch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gbbBranchName' - The name of the branch for which you want to retrieve information.
--
-- * 'gbbRepositoryName' - The name of the repository that contains the branch for which you want to retrieve information.
getBranch ::
  GetBranch
getBranch =
  GetBranch'
    { _gbbBranchName = Nothing,
      _gbbRepositoryName = Nothing
    }

-- | The name of the branch for which you want to retrieve information.
gbbBranchName :: Lens' GetBranch (Maybe Text)
gbbBranchName = lens _gbbBranchName (\s a -> s {_gbbBranchName = a})

-- | The name of the repository that contains the branch for which you want to retrieve information.
gbbRepositoryName :: Lens' GetBranch (Maybe Text)
gbbRepositoryName = lens _gbbRepositoryName (\s a -> s {_gbbRepositoryName = a})

instance AWSRequest GetBranch where
  type Rs GetBranch = GetBranchResponse
  request = postJSON codeCommit
  response =
    receiveJSON
      ( \s h x ->
          GetBranchResponse'
            <$> (x .?> "branch") <*> (pure (fromEnum s))
      )

instance Hashable GetBranch

instance NFData GetBranch

instance ToHeaders GetBranch where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("CodeCommit_20150413.GetBranch" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetBranch where
  toJSON GetBranch' {..} =
    object
      ( catMaybes
          [ ("branchName" .=) <$> _gbbBranchName,
            ("repositoryName" .=) <$> _gbbRepositoryName
          ]
      )

instance ToPath GetBranch where
  toPath = const "/"

instance ToQuery GetBranch where
  toQuery = const mempty

-- | Represents the output of a get branch operation.
--
--
--
-- /See:/ 'getBranchResponse' smart constructor.
data GetBranchResponse = GetBranchResponse'
  { _gbrbrsBranch ::
      !(Maybe BranchInfo),
    _gbrbrsResponseStatus :: !Int
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetBranchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gbrbrsBranch' - The name of the branch.
--
-- * 'gbrbrsResponseStatus' - -- | The response status code.
getBranchResponse ::
  -- | 'gbrbrsResponseStatus'
  Int ->
  GetBranchResponse
getBranchResponse pResponseStatus_ =
  GetBranchResponse'
    { _gbrbrsBranch = Nothing,
      _gbrbrsResponseStatus = pResponseStatus_
    }

-- | The name of the branch.
gbrbrsBranch :: Lens' GetBranchResponse (Maybe BranchInfo)
gbrbrsBranch = lens _gbrbrsBranch (\s a -> s {_gbrbrsBranch = a})

-- | -- | The response status code.
gbrbrsResponseStatus :: Lens' GetBranchResponse Int
gbrbrsResponseStatus = lens _gbrbrsResponseStatus (\s a -> s {_gbrbrsResponseStatus = a})

instance NFData GetBranchResponse
