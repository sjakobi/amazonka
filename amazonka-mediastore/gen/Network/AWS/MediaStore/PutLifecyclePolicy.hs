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
-- Module      : Network.AWS.MediaStore.PutLifecyclePolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Writes an object lifecycle policy to a container. If the container already has an object lifecycle policy, the service replaces the existing policy with the new policy. It takes up to 20 minutes for the change to take effect.
--
--
-- For information about how to construct an object lifecycle policy, see <https://docs.aws.amazon.com/mediastore/latest/ug/policies-object-lifecycle-components.html Components of an Object Lifecycle Policy> .
module Network.AWS.MediaStore.PutLifecyclePolicy
  ( -- * Creating a Request
    putLifecyclePolicy,
    PutLifecyclePolicy,

    -- * Request Lenses
    plpContainerName,
    plpLifecyclePolicy,

    -- * Destructuring the Response
    putLifecyclePolicyResponse,
    PutLifecyclePolicyResponse,

    -- * Response Lenses
    plprrsResponseStatus,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaStore.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'putLifecyclePolicy' smart constructor.
data PutLifecyclePolicy = PutLifecyclePolicy'
  { _plpContainerName ::
      !Text,
    _plpLifecyclePolicy :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PutLifecyclePolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plpContainerName' - The name of the container that you want to assign the object lifecycle policy to.
--
-- * 'plpLifecyclePolicy' - The object lifecycle policy to apply to the container.
putLifecyclePolicy ::
  -- | 'plpContainerName'
  Text ->
  -- | 'plpLifecyclePolicy'
  Text ->
  PutLifecyclePolicy
putLifecyclePolicy pContainerName_ pLifecyclePolicy_ =
  PutLifecyclePolicy'
    { _plpContainerName =
        pContainerName_,
      _plpLifecyclePolicy = pLifecyclePolicy_
    }

-- | The name of the container that you want to assign the object lifecycle policy to.
plpContainerName :: Lens' PutLifecyclePolicy Text
plpContainerName = lens _plpContainerName (\s a -> s {_plpContainerName = a})

-- | The object lifecycle policy to apply to the container.
plpLifecyclePolicy :: Lens' PutLifecyclePolicy Text
plpLifecyclePolicy = lens _plpLifecyclePolicy (\s a -> s {_plpLifecyclePolicy = a})

instance AWSRequest PutLifecyclePolicy where
  type
    Rs PutLifecyclePolicy =
      PutLifecyclePolicyResponse
  request = postJSON mediaStore
  response =
    receiveEmpty
      ( \s h x ->
          PutLifecyclePolicyResponse' <$> (pure (fromEnum s))
      )

instance Hashable PutLifecyclePolicy

instance NFData PutLifecyclePolicy

instance ToHeaders PutLifecyclePolicy where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "MediaStore_20170901.PutLifecyclePolicy" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON PutLifecyclePolicy where
  toJSON PutLifecyclePolicy' {..} =
    object
      ( catMaybes
          [ Just ("ContainerName" .= _plpContainerName),
            Just ("LifecyclePolicy" .= _plpLifecyclePolicy)
          ]
      )

instance ToPath PutLifecyclePolicy where
  toPath = const "/"

instance ToQuery PutLifecyclePolicy where
  toQuery = const mempty

-- | /See:/ 'putLifecyclePolicyResponse' smart constructor.
newtype PutLifecyclePolicyResponse = PutLifecyclePolicyResponse'
  { _plprrsResponseStatus ::
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

-- | Creates a value of 'PutLifecyclePolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'plprrsResponseStatus' - -- | The response status code.
putLifecyclePolicyResponse ::
  -- | 'plprrsResponseStatus'
  Int ->
  PutLifecyclePolicyResponse
putLifecyclePolicyResponse pResponseStatus_ =
  PutLifecyclePolicyResponse'
    { _plprrsResponseStatus =
        pResponseStatus_
    }

-- | -- | The response status code.
plprrsResponseStatus :: Lens' PutLifecyclePolicyResponse Int
plprrsResponseStatus = lens _plprrsResponseStatus (\s a -> s {_plprrsResponseStatus = a})

instance NFData PutLifecyclePolicyResponse
