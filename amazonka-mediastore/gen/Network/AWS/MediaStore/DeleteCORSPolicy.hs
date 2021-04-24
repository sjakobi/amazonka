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
-- Module      : Network.AWS.MediaStore.DeleteCORSPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the cross-origin resource sharing (CORS) configuration information that is set for the container.
--
--
-- To use this operation, you must have permission to perform the @MediaStore:DeleteCorsPolicy@ action. The container owner has this permission by default and can grant this permission to others.
module Network.AWS.MediaStore.DeleteCORSPolicy
  ( -- * Creating a Request
    deleteCORSPolicy,
    DeleteCORSPolicy,

    -- * Request Lenses
    dcpContainerName,

    -- * Destructuring the Response
    deleteCORSPolicyResponse,
    DeleteCORSPolicyResponse,

    -- * Response Lenses
    dcorsprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaStore.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteCORSPolicy' smart constructor.
newtype DeleteCORSPolicy = DeleteCORSPolicy'
  { _dcpContainerName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteCORSPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcpContainerName' - The name of the container to remove the policy from.
deleteCORSPolicy ::
  -- | 'dcpContainerName'
  Text ->
  DeleteCORSPolicy
deleteCORSPolicy pContainerName_ =
  DeleteCORSPolicy'
    { _dcpContainerName =
        pContainerName_
    }

-- | The name of the container to remove the policy from.
dcpContainerName :: Lens' DeleteCORSPolicy Text
dcpContainerName = lens _dcpContainerName (\s a -> s {_dcpContainerName = a})

instance AWSRequest DeleteCORSPolicy where
  type Rs DeleteCORSPolicy = DeleteCORSPolicyResponse
  request = postJSON mediaStore
  response =
    receiveEmpty
      ( \s h x ->
          DeleteCORSPolicyResponse' <$> (pure (fromEnum s))
      )

instance Hashable DeleteCORSPolicy

instance NFData DeleteCORSPolicy

instance ToHeaders DeleteCORSPolicy where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "MediaStore_20170901.DeleteCorsPolicy" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteCORSPolicy where
  toJSON DeleteCORSPolicy' {..} =
    object
      ( catMaybes
          [Just ("ContainerName" .= _dcpContainerName)]
      )

instance ToPath DeleteCORSPolicy where
  toPath = const "/"

instance ToQuery DeleteCORSPolicy where
  toQuery = const mempty

-- | /See:/ 'deleteCORSPolicyResponse' smart constructor.
newtype DeleteCORSPolicyResponse = DeleteCORSPolicyResponse'
  { _dcorsprrsResponseStatus ::
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

-- | Creates a value of 'DeleteCORSPolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcorsprrsResponseStatus' - -- | The response status code.
deleteCORSPolicyResponse ::
  -- | 'dcorsprrsResponseStatus'
  Int ->
  DeleteCORSPolicyResponse
deleteCORSPolicyResponse pResponseStatus_ =
  DeleteCORSPolicyResponse'
    { _dcorsprrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dcorsprrsResponseStatus :: Lens' DeleteCORSPolicyResponse Int
dcorsprrsResponseStatus = lens _dcorsprrsResponseStatus (\s a -> s {_dcorsprrsResponseStatus = a})

instance NFData DeleteCORSPolicyResponse
