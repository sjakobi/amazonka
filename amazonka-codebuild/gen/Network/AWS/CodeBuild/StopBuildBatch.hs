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
-- Module      : Network.AWS.CodeBuild.StopBuildBatch
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Stops a running batch build.
module Network.AWS.CodeBuild.StopBuildBatch
  ( -- * Creating a Request
    stopBuildBatch,
    StopBuildBatch,

    -- * Request Lenses
    sbbId,

    -- * Destructuring the Response
    stopBuildBatchResponse,
    StopBuildBatchResponse,

    -- * Response Lenses
    sbbrrsBuildBatch,
    sbbrrsResponseStatus,
  )
where

import Network.AWS.CodeBuild.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'stopBuildBatch' smart constructor.
newtype StopBuildBatch = StopBuildBatch'
  { _sbbId ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'StopBuildBatch' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sbbId' - The identifier of the batch build to stop.
stopBuildBatch ::
  -- | 'sbbId'
  Text ->
  StopBuildBatch
stopBuildBatch pId_ = StopBuildBatch' {_sbbId = pId_}

-- | The identifier of the batch build to stop.
sbbId :: Lens' StopBuildBatch Text
sbbId = lens _sbbId (\s a -> s {_sbbId = a})

instance AWSRequest StopBuildBatch where
  type Rs StopBuildBatch = StopBuildBatchResponse
  request = postJSON codeBuild
  response =
    receiveJSON
      ( \s h x ->
          StopBuildBatchResponse'
            <$> (x .?> "buildBatch") <*> (pure (fromEnum s))
      )

instance Hashable StopBuildBatch

instance NFData StopBuildBatch

instance ToHeaders StopBuildBatch where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("CodeBuild_20161006.StopBuildBatch" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON StopBuildBatch where
  toJSON StopBuildBatch' {..} =
    object (catMaybes [Just ("id" .= _sbbId)])

instance ToPath StopBuildBatch where
  toPath = const "/"

instance ToQuery StopBuildBatch where
  toQuery = const mempty

-- | /See:/ 'stopBuildBatchResponse' smart constructor.
data StopBuildBatchResponse = StopBuildBatchResponse'
  { _sbbrrsBuildBatch ::
      !(Maybe BuildBatch),
    _sbbrrsResponseStatus ::
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

-- | Creates a value of 'StopBuildBatchResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'sbbrrsBuildBatch' - Undocumented member.
--
-- * 'sbbrrsResponseStatus' - -- | The response status code.
stopBuildBatchResponse ::
  -- | 'sbbrrsResponseStatus'
  Int ->
  StopBuildBatchResponse
stopBuildBatchResponse pResponseStatus_ =
  StopBuildBatchResponse'
    { _sbbrrsBuildBatch =
        Nothing,
      _sbbrrsResponseStatus = pResponseStatus_
    }

-- | Undocumented member.
sbbrrsBuildBatch :: Lens' StopBuildBatchResponse (Maybe BuildBatch)
sbbrrsBuildBatch = lens _sbbrrsBuildBatch (\s a -> s {_sbbrrsBuildBatch = a})

-- | -- | The response status code.
sbbrrsResponseStatus :: Lens' StopBuildBatchResponse Int
sbbrrsResponseStatus = lens _sbbrrsResponseStatus (\s a -> s {_sbbrrsResponseStatus = a})

instance NFData StopBuildBatchResponse
