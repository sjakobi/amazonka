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
-- Module      : Network.AWS.DirectoryService.AcceptSharedDirectory
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Accepts a directory sharing request that was sent from the directory owner account.
module Network.AWS.DirectoryService.AcceptSharedDirectory
  ( -- * Creating a Request
    acceptSharedDirectory,
    AcceptSharedDirectory,

    -- * Request Lenses
    asdSharedDirectoryId,

    -- * Destructuring the Response
    acceptSharedDirectoryResponse,
    AcceptSharedDirectoryResponse,

    -- * Response Lenses
    asdrrsSharedDirectory,
    asdrrsResponseStatus,
  )
where

import Network.AWS.DirectoryService.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'acceptSharedDirectory' smart constructor.
newtype AcceptSharedDirectory = AcceptSharedDirectory'
  { _asdSharedDirectoryId ::
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

-- | Creates a value of 'AcceptSharedDirectory' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asdSharedDirectoryId' - Identifier of the shared directory in the directory consumer account. This identifier is different for each directory owner account.
acceptSharedDirectory ::
  -- | 'asdSharedDirectoryId'
  Text ->
  AcceptSharedDirectory
acceptSharedDirectory pSharedDirectoryId_ =
  AcceptSharedDirectory'
    { _asdSharedDirectoryId =
        pSharedDirectoryId_
    }

-- | Identifier of the shared directory in the directory consumer account. This identifier is different for each directory owner account.
asdSharedDirectoryId :: Lens' AcceptSharedDirectory Text
asdSharedDirectoryId = lens _asdSharedDirectoryId (\s a -> s {_asdSharedDirectoryId = a})

instance AWSRequest AcceptSharedDirectory where
  type
    Rs AcceptSharedDirectory =
      AcceptSharedDirectoryResponse
  request = postJSON directoryService
  response =
    receiveJSON
      ( \s h x ->
          AcceptSharedDirectoryResponse'
            <$> (x .?> "SharedDirectory") <*> (pure (fromEnum s))
      )

instance Hashable AcceptSharedDirectory

instance NFData AcceptSharedDirectory

instance ToHeaders AcceptSharedDirectory where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "DirectoryService_20150416.AcceptSharedDirectory" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON AcceptSharedDirectory where
  toJSON AcceptSharedDirectory' {..} =
    object
      ( catMaybes
          [ Just
              ("SharedDirectoryId" .= _asdSharedDirectoryId)
          ]
      )

instance ToPath AcceptSharedDirectory where
  toPath = const "/"

instance ToQuery AcceptSharedDirectory where
  toQuery = const mempty

-- | /See:/ 'acceptSharedDirectoryResponse' smart constructor.
data AcceptSharedDirectoryResponse = AcceptSharedDirectoryResponse'
  { _asdrrsSharedDirectory ::
      !( Maybe
           SharedDirectory
       ),
    _asdrrsResponseStatus ::
      !Int
  }
  deriving
    ( Eq,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'AcceptSharedDirectoryResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'asdrrsSharedDirectory' - The shared directory in the directory consumer account.
--
-- * 'asdrrsResponseStatus' - -- | The response status code.
acceptSharedDirectoryResponse ::
  -- | 'asdrrsResponseStatus'
  Int ->
  AcceptSharedDirectoryResponse
acceptSharedDirectoryResponse pResponseStatus_ =
  AcceptSharedDirectoryResponse'
    { _asdrrsSharedDirectory =
        Nothing,
      _asdrrsResponseStatus = pResponseStatus_
    }

-- | The shared directory in the directory consumer account.
asdrrsSharedDirectory :: Lens' AcceptSharedDirectoryResponse (Maybe SharedDirectory)
asdrrsSharedDirectory = lens _asdrrsSharedDirectory (\s a -> s {_asdrrsSharedDirectory = a})

-- | -- | The response status code.
asdrrsResponseStatus :: Lens' AcceptSharedDirectoryResponse Int
asdrrsResponseStatus = lens _asdrrsResponseStatus (\s a -> s {_asdrrsResponseStatus = a})

instance NFData AcceptSharedDirectoryResponse
