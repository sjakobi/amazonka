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
-- Module      : Network.AWS.MediaStore.DeleteContainerPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the access policy that is associated with the specified container.
module Network.AWS.MediaStore.DeleteContainerPolicy
  ( -- * Creating a Request
    deleteContainerPolicy,
    DeleteContainerPolicy,

    -- * Request Lenses
    delContainerName,

    -- * Destructuring the Response
    deleteContainerPolicyResponse,
    DeleteContainerPolicyResponse,

    -- * Response Lenses
    dcprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaStore.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteContainerPolicy' smart constructor.
newtype DeleteContainerPolicy = DeleteContainerPolicy'
  { _delContainerName ::
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

-- | Creates a value of 'DeleteContainerPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delContainerName' - The name of the container that holds the policy.
deleteContainerPolicy ::
  -- | 'delContainerName'
  Text ->
  DeleteContainerPolicy
deleteContainerPolicy pContainerName_ =
  DeleteContainerPolicy'
    { _delContainerName =
        pContainerName_
    }

-- | The name of the container that holds the policy.
delContainerName :: Lens' DeleteContainerPolicy Text
delContainerName = lens _delContainerName (\s a -> s {_delContainerName = a})

instance AWSRequest DeleteContainerPolicy where
  type
    Rs DeleteContainerPolicy =
      DeleteContainerPolicyResponse
  request = postJSON mediaStore
  response =
    receiveEmpty
      ( \s h x ->
          DeleteContainerPolicyResponse'
            <$> (pure (fromEnum s))
      )

instance Hashable DeleteContainerPolicy

instance NFData DeleteContainerPolicy

instance ToHeaders DeleteContainerPolicy where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "MediaStore_20170901.DeleteContainerPolicy" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteContainerPolicy where
  toJSON DeleteContainerPolicy' {..} =
    object
      ( catMaybes
          [Just ("ContainerName" .= _delContainerName)]
      )

instance ToPath DeleteContainerPolicy where
  toPath = const "/"

instance ToQuery DeleteContainerPolicy where
  toQuery = const mempty

-- | /See:/ 'deleteContainerPolicyResponse' smart constructor.
newtype DeleteContainerPolicyResponse = DeleteContainerPolicyResponse'
  { _dcprrsResponseStatus ::
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

-- | Creates a value of 'DeleteContainerPolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dcprrsResponseStatus' - -- | The response status code.
deleteContainerPolicyResponse ::
  -- | 'dcprrsResponseStatus'
  Int ->
  DeleteContainerPolicyResponse
deleteContainerPolicyResponse pResponseStatus_ =
  DeleteContainerPolicyResponse'
    { _dcprrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
dcprrsResponseStatus :: Lens' DeleteContainerPolicyResponse Int
dcprrsResponseStatus = lens _dcprrsResponseStatus (\s a -> s {_dcprrsResponseStatus = a})

instance NFData DeleteContainerPolicyResponse
