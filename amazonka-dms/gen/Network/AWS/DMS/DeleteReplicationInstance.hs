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
-- Module      : Network.AWS.DMS.DeleteReplicationInstance
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the specified replication instance.
module Network.AWS.DMS.DeleteReplicationInstance
  ( -- * Creating a Request
    deleteReplicationInstance,
    DeleteReplicationInstance,

    -- * Request Lenses
    driReplicationInstanceARN,

    -- * Destructuring the Response
    deleteReplicationInstanceResponse,
    DeleteReplicationInstanceResponse,

    -- * Response Lenses
    drirrsReplicationInstance,
    drirrsResponseStatus,
  )
where

import Network.AWS.DMS.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- |
--
--
--
-- /See:/ 'deleteReplicationInstance' smart constructor.
newtype DeleteReplicationInstance = DeleteReplicationInstance'
  { _driReplicationInstanceARN ::
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

-- | Creates a value of 'DeleteReplicationInstance' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'driReplicationInstanceARN' - The Amazon Resource Name (ARN) of the replication instance to be deleted.
deleteReplicationInstance ::
  -- | 'driReplicationInstanceARN'
  Text ->
  DeleteReplicationInstance
deleteReplicationInstance pReplicationInstanceARN_ =
  DeleteReplicationInstance'
    { _driReplicationInstanceARN =
        pReplicationInstanceARN_
    }

-- | The Amazon Resource Name (ARN) of the replication instance to be deleted.
driReplicationInstanceARN :: Lens' DeleteReplicationInstance Text
driReplicationInstanceARN = lens _driReplicationInstanceARN (\s a -> s {_driReplicationInstanceARN = a})

instance AWSRequest DeleteReplicationInstance where
  type
    Rs DeleteReplicationInstance =
      DeleteReplicationInstanceResponse
  request = postJSON dms
  response =
    receiveJSON
      ( \s h x ->
          DeleteReplicationInstanceResponse'
            <$> (x .?> "ReplicationInstance")
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteReplicationInstance

instance NFData DeleteReplicationInstance

instance ToHeaders DeleteReplicationInstance where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonDMSv20160101.DeleteReplicationInstance" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteReplicationInstance where
  toJSON DeleteReplicationInstance' {..} =
    object
      ( catMaybes
          [ Just
              ( "ReplicationInstanceArn"
                  .= _driReplicationInstanceARN
              )
          ]
      )

instance ToPath DeleteReplicationInstance where
  toPath = const "/"

instance ToQuery DeleteReplicationInstance where
  toQuery = const mempty

-- |
--
--
--
-- /See:/ 'deleteReplicationInstanceResponse' smart constructor.
data DeleteReplicationInstanceResponse = DeleteReplicationInstanceResponse'
  { _drirrsReplicationInstance ::
      !( Maybe
           ReplicationInstance
       ),
    _drirrsResponseStatus ::
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

-- | Creates a value of 'DeleteReplicationInstanceResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'drirrsReplicationInstance' - The replication instance that was deleted.
--
-- * 'drirrsResponseStatus' - -- | The response status code.
deleteReplicationInstanceResponse ::
  -- | 'drirrsResponseStatus'
  Int ->
  DeleteReplicationInstanceResponse
deleteReplicationInstanceResponse pResponseStatus_ =
  DeleteReplicationInstanceResponse'
    { _drirrsReplicationInstance =
        Nothing,
      _drirrsResponseStatus = pResponseStatus_
    }

-- | The replication instance that was deleted.
drirrsReplicationInstance :: Lens' DeleteReplicationInstanceResponse (Maybe ReplicationInstance)
drirrsReplicationInstance = lens _drirrsReplicationInstance (\s a -> s {_drirrsReplicationInstance = a})

-- | -- | The response status code.
drirrsResponseStatus :: Lens' DeleteReplicationInstanceResponse Int
drirrsResponseStatus = lens _drirrsResponseStatus (\s a -> s {_drirrsResponseStatus = a})

instance NFData DeleteReplicationInstanceResponse
