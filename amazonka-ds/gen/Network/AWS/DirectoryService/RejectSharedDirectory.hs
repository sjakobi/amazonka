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
-- Module      : Network.AWS.DirectoryService.RejectSharedDirectory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Rejects a directory sharing request that was sent from the directory owner account.
module Network.AWS.DirectoryService.RejectSharedDirectory
  ( -- * Creating a Request
    rejectSharedDirectory,
    RejectSharedDirectory,

    -- * Request Lenses
    rsdSharedDirectoryId,

    -- * Destructuring the Response
    rejectSharedDirectoryResponse,
    RejectSharedDirectoryResponse,

    -- * Response Lenses
    rsdrrsSharedDirectoryId,
    rsdrrsResponseStatus,
  )
where

import Network.AWS.DirectoryService.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'rejectSharedDirectory' smart constructor.
newtype RejectSharedDirectory = RejectSharedDirectory'
  { _rsdSharedDirectoryId ::
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

-- | Creates a value of 'RejectSharedDirectory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsdSharedDirectoryId' - Identifier of the shared directory in the directory consumer account. This identifier is different for each directory owner account.
rejectSharedDirectory ::
  -- | 'rsdSharedDirectoryId'
  Text ->
  RejectSharedDirectory
rejectSharedDirectory pSharedDirectoryId_ =
  RejectSharedDirectory'
    { _rsdSharedDirectoryId =
        pSharedDirectoryId_
    }

-- | Identifier of the shared directory in the directory consumer account. This identifier is different for each directory owner account.
rsdSharedDirectoryId :: Lens' RejectSharedDirectory Text
rsdSharedDirectoryId = lens _rsdSharedDirectoryId (\s a -> s {_rsdSharedDirectoryId = a})

instance AWSRequest RejectSharedDirectory where
  type
    Rs RejectSharedDirectory =
      RejectSharedDirectoryResponse
  request = postJSON directoryService
  response =
    receiveJSON
      ( \s h x ->
          RejectSharedDirectoryResponse'
            <$> (x .?> "SharedDirectoryId") <*> (pure (fromEnum s))
      )

instance Hashable RejectSharedDirectory

instance NFData RejectSharedDirectory

instance ToHeaders RejectSharedDirectory where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DirectoryService_20150416.RejectSharedDirectory" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON RejectSharedDirectory where
  toJSON RejectSharedDirectory' {..} =
    object
      ( catMaybes
          [ Just
              ("SharedDirectoryId" .= _rsdSharedDirectoryId)
          ]
      )

instance ToPath RejectSharedDirectory where
  toPath = const "/"

instance ToQuery RejectSharedDirectory where
  toQuery = const mempty

-- | /See:/ 'rejectSharedDirectoryResponse' smart constructor.
data RejectSharedDirectoryResponse = RejectSharedDirectoryResponse'
  { _rsdrrsSharedDirectoryId ::
      !( Maybe
           Text
       ),
    _rsdrrsResponseStatus ::
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

-- | Creates a value of 'RejectSharedDirectoryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'rsdrrsSharedDirectoryId' - Identifier of the shared directory in the directory consumer account.
--
-- * 'rsdrrsResponseStatus' - -- | The response status code.
rejectSharedDirectoryResponse ::
  -- | 'rsdrrsResponseStatus'
  Int ->
  RejectSharedDirectoryResponse
rejectSharedDirectoryResponse pResponseStatus_ =
  RejectSharedDirectoryResponse'
    { _rsdrrsSharedDirectoryId =
        Nothing,
      _rsdrrsResponseStatus = pResponseStatus_
    }

-- | Identifier of the shared directory in the directory consumer account.
rsdrrsSharedDirectoryId :: Lens' RejectSharedDirectoryResponse (Maybe Text)
rsdrrsSharedDirectoryId = lens _rsdrrsSharedDirectoryId (\s a -> s {_rsdrrsSharedDirectoryId = a})

-- | -- | The response status code.
rsdrrsResponseStatus :: Lens' RejectSharedDirectoryResponse Int
rsdrrsResponseStatus = lens _rsdrrsResponseStatus (\s a -> s {_rsdrrsResponseStatus = a})

instance NFData RejectSharedDirectoryResponse
