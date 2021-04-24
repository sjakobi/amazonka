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
-- Module      : Network.AWS.StorageGateway.DeleteFileShare
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a file share from a file gateway. This operation is only supported for file gateways.
module Network.AWS.StorageGateway.DeleteFileShare
  ( -- * Creating a Request
    deleteFileShare,
    DeleteFileShare,

    -- * Request Lenses
    dfsForceDelete,
    dfsFileShareARN,

    -- * Destructuring the Response
    deleteFileShareResponse,
    DeleteFileShareResponse,

    -- * Response Lenses
    dfsrrsFileShareARN,
    dfsrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.StorageGateway.Types

-- | DeleteFileShareInput
--
--
--
-- /See:/ 'deleteFileShare' smart constructor.
data DeleteFileShare = DeleteFileShare'
  { _dfsForceDelete ::
      !(Maybe Bool),
    _dfsFileShareARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteFileShare' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfsForceDelete' - If this value is set to @true@ , the operation deletes a file share immediately and aborts all data uploads to AWS. Otherwise, the file share is not deleted until all data is uploaded to AWS. This process aborts the data upload process, and the file share enters the @FORCE_DELETING@ status. Valid Values: @true@ | @false@
--
-- * 'dfsFileShareARN' - The Amazon Resource Name (ARN) of the file share to be deleted.
deleteFileShare ::
  -- | 'dfsFileShareARN'
  Text ->
  DeleteFileShare
deleteFileShare pFileShareARN_ =
  DeleteFileShare'
    { _dfsForceDelete = Nothing,
      _dfsFileShareARN = pFileShareARN_
    }

-- | If this value is set to @true@ , the operation deletes a file share immediately and aborts all data uploads to AWS. Otherwise, the file share is not deleted until all data is uploaded to AWS. This process aborts the data upload process, and the file share enters the @FORCE_DELETING@ status. Valid Values: @true@ | @false@
dfsForceDelete :: Lens' DeleteFileShare (Maybe Bool)
dfsForceDelete = lens _dfsForceDelete (\s a -> s {_dfsForceDelete = a})

-- | The Amazon Resource Name (ARN) of the file share to be deleted.
dfsFileShareARN :: Lens' DeleteFileShare Text
dfsFileShareARN = lens _dfsFileShareARN (\s a -> s {_dfsFileShareARN = a})

instance AWSRequest DeleteFileShare where
  type Rs DeleteFileShare = DeleteFileShareResponse
  request = postJSON storageGateway
  response =
    receiveJSON
      ( \s h x ->
          DeleteFileShareResponse'
            <$> (x .?> "FileShareARN") <*> (pure (fromEnum s))
      )

instance Hashable DeleteFileShare

instance NFData DeleteFileShare

instance ToHeaders DeleteFileShare where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "StorageGateway_20130630.DeleteFileShare" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteFileShare where
  toJSON DeleteFileShare' {..} =
    object
      ( catMaybes
          [ ("ForceDelete" .=) <$> _dfsForceDelete,
            Just ("FileShareARN" .= _dfsFileShareARN)
          ]
      )

instance ToPath DeleteFileShare where
  toPath = const "/"

instance ToQuery DeleteFileShare where
  toQuery = const mempty

-- | DeleteFileShareOutput
--
--
--
-- /See:/ 'deleteFileShareResponse' smart constructor.
data DeleteFileShareResponse = DeleteFileShareResponse'
  { _dfsrrsFileShareARN ::
      !(Maybe Text),
    _dfsrrsResponseStatus ::
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

-- | Creates a value of 'DeleteFileShareResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dfsrrsFileShareARN' - The Amazon Resource Name (ARN) of the deleted file share.
--
-- * 'dfsrrsResponseStatus' - -- | The response status code.
deleteFileShareResponse ::
  -- | 'dfsrrsResponseStatus'
  Int ->
  DeleteFileShareResponse
deleteFileShareResponse pResponseStatus_ =
  DeleteFileShareResponse'
    { _dfsrrsFileShareARN =
        Nothing,
      _dfsrrsResponseStatus = pResponseStatus_
    }

-- | The Amazon Resource Name (ARN) of the deleted file share.
dfsrrsFileShareARN :: Lens' DeleteFileShareResponse (Maybe Text)
dfsrrsFileShareARN = lens _dfsrrsFileShareARN (\s a -> s {_dfsrrsFileShareARN = a})

-- | -- | The response status code.
dfsrrsResponseStatus :: Lens' DeleteFileShareResponse Int
dfsrrsResponseStatus = lens _dfsrrsResponseStatus (\s a -> s {_dfsrrsResponseStatus = a})

instance NFData DeleteFileShareResponse
