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
-- Module      : Network.AWS.ECR.DeleteRegistryPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes the registry permissions policy.
module Network.AWS.ECR.DeleteRegistryPolicy
  ( -- * Creating a Request
    deleteRegistryPolicy,
    DeleteRegistryPolicy,

    -- * Destructuring the Response
    deleteRegistryPolicyResponse,
    DeleteRegistryPolicyResponse,

    -- * Response Lenses
    delrsRegistryId,
    delrsPolicyText,
    delrsResponseStatus,
  )
where

import Network.AWS.ECR.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'deleteRegistryPolicy' smart constructor.
data DeleteRegistryPolicy = DeleteRegistryPolicy'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DeleteRegistryPolicy' with the minimum fields required to make a request.
deleteRegistryPolicy ::
  DeleteRegistryPolicy
deleteRegistryPolicy = DeleteRegistryPolicy'

instance AWSRequest DeleteRegistryPolicy where
  type
    Rs DeleteRegistryPolicy =
      DeleteRegistryPolicyResponse
  request = postJSON ecr
  response =
    receiveJSON
      ( \s h x ->
          DeleteRegistryPolicyResponse'
            <$> (x .?> "registryId")
            <*> (x .?> "policyText")
            <*> (pure (fromEnum s))
      )

instance Hashable DeleteRegistryPolicy

instance NFData DeleteRegistryPolicy

instance ToHeaders DeleteRegistryPolicy where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerRegistry_V20150921.DeleteRegistryPolicy" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteRegistryPolicy where
  toJSON = const (Object mempty)

instance ToPath DeleteRegistryPolicy where
  toPath = const "/"

instance ToQuery DeleteRegistryPolicy where
  toQuery = const mempty

-- | /See:/ 'deleteRegistryPolicyResponse' smart constructor.
data DeleteRegistryPolicyResponse = DeleteRegistryPolicyResponse'
  { _delrsRegistryId ::
      !(Maybe Text),
    _delrsPolicyText ::
      !(Maybe Text),
    _delrsResponseStatus ::
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

-- | Creates a value of 'DeleteRegistryPolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'delrsRegistryId' - The registry ID associated with the request.
--
-- * 'delrsPolicyText' - The contents of the registry permissions policy that was deleted.
--
-- * 'delrsResponseStatus' - -- | The response status code.
deleteRegistryPolicyResponse ::
  -- | 'delrsResponseStatus'
  Int ->
  DeleteRegistryPolicyResponse
deleteRegistryPolicyResponse pResponseStatus_ =
  DeleteRegistryPolicyResponse'
    { _delrsRegistryId =
        Nothing,
      _delrsPolicyText = Nothing,
      _delrsResponseStatus = pResponseStatus_
    }

-- | The registry ID associated with the request.
delrsRegistryId :: Lens' DeleteRegistryPolicyResponse (Maybe Text)
delrsRegistryId = lens _delrsRegistryId (\s a -> s {_delrsRegistryId = a})

-- | The contents of the registry permissions policy that was deleted.
delrsPolicyText :: Lens' DeleteRegistryPolicyResponse (Maybe Text)
delrsPolicyText = lens _delrsPolicyText (\s a -> s {_delrsPolicyText = a})

-- | -- | The response status code.
delrsResponseStatus :: Lens' DeleteRegistryPolicyResponse Int
delrsResponseStatus = lens _delrsResponseStatus (\s a -> s {_delrsResponseStatus = a})

instance NFData DeleteRegistryPolicyResponse
