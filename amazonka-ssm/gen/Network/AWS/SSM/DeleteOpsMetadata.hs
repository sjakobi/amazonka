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
-- Module      : Network.AWS.SSM.DeleteOpsMetadata
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Delete OpsMetadata related to an application.
module Network.AWS.SSM.DeleteOpsMetadata
  ( -- * Creating a Request
    deleteOpsMetadata,
    DeleteOpsMetadata,

    -- * Request Lenses
    domOpsMetadataARN,

    -- * Destructuring the Response
    deleteOpsMetadataResponse,
    DeleteOpsMetadataResponse,

    -- * Response Lenses
    domrrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SSM.Types

-- | /See:/ 'deleteOpsMetadata' smart constructor.
newtype DeleteOpsMetadata = DeleteOpsMetadata'
  { _domOpsMetadataARN ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteOpsMetadata' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'domOpsMetadataARN' - The Amazon Resource Name (ARN) of an OpsMetadata Object to delete.
deleteOpsMetadata ::
  -- | 'domOpsMetadataARN'
  Text ->
  DeleteOpsMetadata
deleteOpsMetadata pOpsMetadataARN_ =
  DeleteOpsMetadata'
    { _domOpsMetadataARN =
        pOpsMetadataARN_
    }

-- | The Amazon Resource Name (ARN) of an OpsMetadata Object to delete.
domOpsMetadataARN :: Lens' DeleteOpsMetadata Text
domOpsMetadataARN = lens _domOpsMetadataARN (\s a -> s {_domOpsMetadataARN = a})

instance AWSRequest DeleteOpsMetadata where
  type Rs DeleteOpsMetadata = DeleteOpsMetadataResponse
  request = postJSON ssm
  response =
    receiveEmpty
      ( \s h x ->
          DeleteOpsMetadataResponse' <$> (pure (fromEnum s))
      )

instance Hashable DeleteOpsMetadata

instance NFData DeleteOpsMetadata

instance ToHeaders DeleteOpsMetadata where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ("AmazonSSM.DeleteOpsMetadata" :: ByteString),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteOpsMetadata where
  toJSON DeleteOpsMetadata' {..} =
    object
      ( catMaybes
          [Just ("OpsMetadataArn" .= _domOpsMetadataARN)]
      )

instance ToPath DeleteOpsMetadata where
  toPath = const "/"

instance ToQuery DeleteOpsMetadata where
  toQuery = const mempty

-- | /See:/ 'deleteOpsMetadataResponse' smart constructor.
newtype DeleteOpsMetadataResponse = DeleteOpsMetadataResponse'
  { _domrrsResponseStatus ::
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

-- | Creates a value of 'DeleteOpsMetadataResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'domrrsResponseStatus' - -- | The response status code.
deleteOpsMetadataResponse ::
  -- | 'domrrsResponseStatus'
  Int ->
  DeleteOpsMetadataResponse
deleteOpsMetadataResponse pResponseStatus_ =
  DeleteOpsMetadataResponse'
    { _domrrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
domrrsResponseStatus :: Lens' DeleteOpsMetadataResponse Int
domrrsResponseStatus = lens _domrrsResponseStatus (\s a -> s {_domrrsResponseStatus = a})

instance NFData DeleteOpsMetadataResponse
