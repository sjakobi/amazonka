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
-- Module      : Network.AWS.CodeDeploy.DeleteGitHubAccountToken
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a GitHub account connection.
module Network.AWS.CodeDeploy.DeleteGitHubAccountToken
  ( -- * Creating a Request
    deleteGitHubAccountToken,
    DeleteGitHubAccountToken,

    -- * Request Lenses
    dghatTokenName,

    -- * Destructuring the Response
    deleteGitHubAccountTokenResponse,
    DeleteGitHubAccountTokenResponse,

    -- * Response Lenses
    dghatrrsTokenName,
    dghatrrsResponseStatus,
  )
where

import Network.AWS.CodeDeploy.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Represents the input of a @DeleteGitHubAccount@ operation.
--
--
--
-- /See:/ 'deleteGitHubAccountToken' smart constructor.
newtype DeleteGitHubAccountToken = DeleteGitHubAccountToken'
  { _dghatTokenName ::
      Maybe Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteGitHubAccountToken' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dghatTokenName' - The name of the GitHub account connection to delete.
deleteGitHubAccountToken ::
  DeleteGitHubAccountToken
deleteGitHubAccountToken =
  DeleteGitHubAccountToken'
    { _dghatTokenName =
        Nothing
    }

-- | The name of the GitHub account connection to delete.
dghatTokenName :: Lens' DeleteGitHubAccountToken (Maybe Text)
dghatTokenName = lens _dghatTokenName (\s a -> s {_dghatTokenName = a})

instance AWSRequest DeleteGitHubAccountToken where
  type
    Rs DeleteGitHubAccountToken =
      DeleteGitHubAccountTokenResponse
  request = postJSON codeDeploy
  response =
    receiveJSON
      ( \s h x ->
          DeleteGitHubAccountTokenResponse'
            <$> (x .?> "tokenName") <*> (pure (fromEnum s))
      )

instance Hashable DeleteGitHubAccountToken

instance NFData DeleteGitHubAccountToken

instance ToHeaders DeleteGitHubAccountToken where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeDeploy_20141006.DeleteGitHubAccountToken" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteGitHubAccountToken where
  toJSON DeleteGitHubAccountToken' {..} =
    object
      (catMaybes [("tokenName" .=) <$> _dghatTokenName])

instance ToPath DeleteGitHubAccountToken where
  toPath = const "/"

instance ToQuery DeleteGitHubAccountToken where
  toQuery = const mempty

-- | Represents the output of a @DeleteGitHubAccountToken@ operation.
--
--
--
-- /See:/ 'deleteGitHubAccountTokenResponse' smart constructor.
data DeleteGitHubAccountTokenResponse = DeleteGitHubAccountTokenResponse'
  { _dghatrrsTokenName ::
      !( Maybe
           Text
       ),
    _dghatrrsResponseStatus ::
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

-- | Creates a value of 'DeleteGitHubAccountTokenResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dghatrrsTokenName' - The name of the GitHub account connection that was deleted.
--
-- * 'dghatrrsResponseStatus' - -- | The response status code.
deleteGitHubAccountTokenResponse ::
  -- | 'dghatrrsResponseStatus'
  Int ->
  DeleteGitHubAccountTokenResponse
deleteGitHubAccountTokenResponse pResponseStatus_ =
  DeleteGitHubAccountTokenResponse'
    { _dghatrrsTokenName =
        Nothing,
      _dghatrrsResponseStatus =
        pResponseStatus_
    }

-- | The name of the GitHub account connection that was deleted.
dghatrrsTokenName :: Lens' DeleteGitHubAccountTokenResponse (Maybe Text)
dghatrrsTokenName = lens _dghatrrsTokenName (\s a -> s {_dghatrrsTokenName = a})

-- | -- | The response status code.
dghatrrsResponseStatus :: Lens' DeleteGitHubAccountTokenResponse Int
dghatrrsResponseStatus = lens _dghatrrsResponseStatus (\s a -> s {_dghatrrsResponseStatus = a})

instance NFData DeleteGitHubAccountTokenResponse
