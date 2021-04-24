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
-- Module      : Network.AWS.CodeBuild.InvalidateProjectCache
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Resets the cache for a project.
module Network.AWS.CodeBuild.InvalidateProjectCache
  ( -- * Creating a Request
    invalidateProjectCache,
    InvalidateProjectCache,

    -- * Request Lenses
    ipcProjectName,

    -- * Destructuring the Response
    invalidateProjectCacheResponse,
    InvalidateProjectCacheResponse,

    -- * Response Lenses
    ipcrrsResponseStatus,
  )
where

import Network.AWS.CodeBuild.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'invalidateProjectCache' smart constructor.
newtype InvalidateProjectCache = InvalidateProjectCache'
  { _ipcProjectName ::
      Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'InvalidateProjectCache' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ipcProjectName' - The name of the AWS CodeBuild build project that the cache is reset for.
invalidateProjectCache ::
  -- | 'ipcProjectName'
  Text ->
  InvalidateProjectCache
invalidateProjectCache pProjectName_ =
  InvalidateProjectCache'
    { _ipcProjectName =
        pProjectName_
    }

-- | The name of the AWS CodeBuild build project that the cache is reset for.
ipcProjectName :: Lens' InvalidateProjectCache Text
ipcProjectName = lens _ipcProjectName (\s a -> s {_ipcProjectName = a})

instance AWSRequest InvalidateProjectCache where
  type
    Rs InvalidateProjectCache =
      InvalidateProjectCacheResponse
  request = postJSON codeBuild
  response =
    receiveEmpty
      ( \s h x ->
          InvalidateProjectCacheResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable InvalidateProjectCache

instance NFData InvalidateProjectCache

instance ToHeaders InvalidateProjectCache where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "CodeBuild_20161006.InvalidateProjectCache" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON InvalidateProjectCache where
  toJSON InvalidateProjectCache' {..} =
    object
      (catMaybes [Just ("projectName" .= _ipcProjectName)])

instance ToPath InvalidateProjectCache where
  toPath = const "/"

instance ToQuery InvalidateProjectCache where
  toQuery = const mempty

-- | /See:/ 'invalidateProjectCacheResponse' smart constructor.
newtype InvalidateProjectCacheResponse = InvalidateProjectCacheResponse'
  { _ipcrrsResponseStatus ::
      Int
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'InvalidateProjectCacheResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'ipcrrsResponseStatus' - -- | The response status code.
invalidateProjectCacheResponse ::
  -- | 'ipcrrsResponseStatus'
  Int ->
  InvalidateProjectCacheResponse
invalidateProjectCacheResponse pResponseStatus_ =
  InvalidateProjectCacheResponse'
    { _ipcrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
ipcrrsResponseStatus :: Lens' InvalidateProjectCacheResponse Int
ipcrrsResponseStatus = lens _ipcrrsResponseStatus (\s a -> s {_ipcrrsResponseStatus = a})

instance NFData InvalidateProjectCacheResponse
