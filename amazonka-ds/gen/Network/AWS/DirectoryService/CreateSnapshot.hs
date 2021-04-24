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
-- Module      : Network.AWS.DirectoryService.CreateSnapshot
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Creates a snapshot of a Simple AD or Microsoft AD directory in the AWS cloud.
module Network.AWS.DirectoryService.CreateSnapshot
  ( -- * Creating a Request
    createSnapshot,
    CreateSnapshot,

    -- * Request Lenses
    csName,
    csDirectoryId,

    -- * Destructuring the Response
    createSnapshotResponse,
    CreateSnapshotResponse,

    -- * Response Lenses
    csrrsSnapshotId,
    csrrsResponseStatus,
  )
where

import Network.AWS.DirectoryService.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | Contains the inputs for the 'CreateSnapshot' operation.
--
--
--
-- /See:/ 'createSnapshot' smart constructor.
data CreateSnapshot = CreateSnapshot'
  { _csName ::
      !(Maybe Text),
    _csDirectoryId :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'CreateSnapshot' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csName' - The descriptive name to apply to the snapshot.
--
-- * 'csDirectoryId' - The identifier of the directory of which to take a snapshot.
createSnapshot ::
  -- | 'csDirectoryId'
  Text ->
  CreateSnapshot
createSnapshot pDirectoryId_ =
  CreateSnapshot'
    { _csName = Nothing,
      _csDirectoryId = pDirectoryId_
    }

-- | The descriptive name to apply to the snapshot.
csName :: Lens' CreateSnapshot (Maybe Text)
csName = lens _csName (\s a -> s {_csName = a})

-- | The identifier of the directory of which to take a snapshot.
csDirectoryId :: Lens' CreateSnapshot Text
csDirectoryId = lens _csDirectoryId (\s a -> s {_csDirectoryId = a})

instance AWSRequest CreateSnapshot where
  type Rs CreateSnapshot = CreateSnapshotResponse
  request = postJSON directoryService
  response =
    receiveJSON
      ( \s h x ->
          CreateSnapshotResponse'
            <$> (x .?> "SnapshotId") <*> (pure (fromEnum s))
      )

instance Hashable CreateSnapshot

instance NFData CreateSnapshot

instance ToHeaders CreateSnapshot where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DirectoryService_20150416.CreateSnapshot" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON CreateSnapshot where
  toJSON CreateSnapshot' {..} =
    object
      ( catMaybes
          [ ("Name" .=) <$> _csName,
            Just ("DirectoryId" .= _csDirectoryId)
          ]
      )

instance ToPath CreateSnapshot where
  toPath = const "/"

instance ToQuery CreateSnapshot where
  toQuery = const mempty

-- | Contains the results of the 'CreateSnapshot' operation.
--
--
--
-- /See:/ 'createSnapshotResponse' smart constructor.
data CreateSnapshotResponse = CreateSnapshotResponse'
  { _csrrsSnapshotId ::
      !(Maybe Text),
    _csrrsResponseStatus ::
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

-- | Creates a value of 'CreateSnapshotResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'csrrsSnapshotId' - The identifier of the snapshot that was created.
--
-- * 'csrrsResponseStatus' - -- | The response status code.
createSnapshotResponse ::
  -- | 'csrrsResponseStatus'
  Int ->
  CreateSnapshotResponse
createSnapshotResponse pResponseStatus_ =
  CreateSnapshotResponse'
    { _csrrsSnapshotId = Nothing,
      _csrrsResponseStatus = pResponseStatus_
    }

-- | The identifier of the snapshot that was created.
csrrsSnapshotId :: Lens' CreateSnapshotResponse (Maybe Text)
csrrsSnapshotId = lens _csrrsSnapshotId (\s a -> s {_csrrsSnapshotId = a})

-- | -- | The response status code.
csrrsResponseStatus :: Lens' CreateSnapshotResponse Int
csrrsResponseStatus = lens _csrrsResponseStatus (\s a -> s {_csrrsResponseStatus = a})

instance NFData CreateSnapshotResponse
