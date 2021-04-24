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
-- Module      : Network.AWS.MediaStore.GetLifecyclePolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the object lifecycle policy that is assigned to a container.
module Network.AWS.MediaStore.GetLifecyclePolicy
  ( -- * Creating a Request
    getLifecyclePolicy,
    GetLifecyclePolicy,

    -- * Request Lenses
    glpContainerName,

    -- * Destructuring the Response
    getLifecyclePolicyResponse,
    GetLifecyclePolicyResponse,

    -- * Response Lenses
    glprrsResponseStatus,
    glprrsLifecyclePolicy,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaStore.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getLifecyclePolicy' smart constructor.
newtype GetLifecyclePolicy = GetLifecyclePolicy'
  { _glpContainerName ::
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

-- | Creates a value of 'GetLifecyclePolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glpContainerName' - The name of the container that the object lifecycle policy is assigned to.
getLifecyclePolicy ::
  -- | 'glpContainerName'
  Text ->
  GetLifecyclePolicy
getLifecyclePolicy pContainerName_ =
  GetLifecyclePolicy'
    { _glpContainerName =
        pContainerName_
    }

-- | The name of the container that the object lifecycle policy is assigned to.
glpContainerName :: Lens' GetLifecyclePolicy Text
glpContainerName = lens _glpContainerName (\s a -> s {_glpContainerName = a})

instance AWSRequest GetLifecyclePolicy where
  type
    Rs GetLifecyclePolicy =
      GetLifecyclePolicyResponse
  request = postJSON mediaStore
  response =
    receiveJSON
      ( \s h x ->
          GetLifecyclePolicyResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "LifecyclePolicy")
      )

instance Hashable GetLifecyclePolicy

instance NFData GetLifecyclePolicy

instance ToHeaders GetLifecyclePolicy where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "MediaStore_20170901.GetLifecyclePolicy" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetLifecyclePolicy where
  toJSON GetLifecyclePolicy' {..} =
    object
      ( catMaybes
          [Just ("ContainerName" .= _glpContainerName)]
      )

instance ToPath GetLifecyclePolicy where
  toPath = const "/"

instance ToQuery GetLifecyclePolicy where
  toQuery = const mempty

-- | /See:/ 'getLifecyclePolicyResponse' smart constructor.
data GetLifecyclePolicyResponse = GetLifecyclePolicyResponse'
  { _glprrsResponseStatus ::
      !Int,
    _glprrsLifecyclePolicy ::
      !Text
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetLifecyclePolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'glprrsResponseStatus' - -- | The response status code.
--
-- * 'glprrsLifecyclePolicy' - The object lifecycle policy that is assigned to the container.
getLifecyclePolicyResponse ::
  -- | 'glprrsResponseStatus'
  Int ->
  -- | 'glprrsLifecyclePolicy'
  Text ->
  GetLifecyclePolicyResponse
getLifecyclePolicyResponse
  pResponseStatus_
  pLifecyclePolicy_ =
    GetLifecyclePolicyResponse'
      { _glprrsResponseStatus =
          pResponseStatus_,
        _glprrsLifecyclePolicy = pLifecyclePolicy_
      }

-- | -- | The response status code.
glprrsResponseStatus :: Lens' GetLifecyclePolicyResponse Int
glprrsResponseStatus = lens _glprrsResponseStatus (\s a -> s {_glprrsResponseStatus = a})

-- | The object lifecycle policy that is assigned to the container.
glprrsLifecyclePolicy :: Lens' GetLifecyclePolicyResponse Text
glprrsLifecyclePolicy = lens _glprrsLifecyclePolicy (\s a -> s {_glprrsLifecyclePolicy = a})

instance NFData GetLifecyclePolicyResponse
