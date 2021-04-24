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
-- Module      : Network.AWS.ECR.GetRegistryPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Retrieves the permissions policy for a registry.
module Network.AWS.ECR.GetRegistryPolicy
  ( -- * Creating a Request
    getRegistryPolicy,
    GetRegistryPolicy,

    -- * Destructuring the Response
    getRegistryPolicyResponse,
    GetRegistryPolicyResponse,

    -- * Response Lenses
    grprrsRegistryId,
    grprrsPolicyText,
    grprrsResponseStatus,
  )
where

import Network.AWS.ECR.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getRegistryPolicy' smart constructor.
data GetRegistryPolicy = GetRegistryPolicy'
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetRegistryPolicy' with the minimum fields required to make a request.
getRegistryPolicy ::
  GetRegistryPolicy
getRegistryPolicy = GetRegistryPolicy'

instance AWSRequest GetRegistryPolicy where
  type Rs GetRegistryPolicy = GetRegistryPolicyResponse
  request = postJSON ecr
  response =
    receiveJSON
      ( \s h x ->
          GetRegistryPolicyResponse'
            <$> (x .?> "registryId")
            <*> (x .?> "policyText")
            <*> (pure (fromEnum s))
      )

instance Hashable GetRegistryPolicy

instance NFData GetRegistryPolicy

instance ToHeaders GetRegistryPolicy where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "AmazonEC2ContainerRegistry_V20150921.GetRegistryPolicy" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetRegistryPolicy where
  toJSON = const (Object mempty)

instance ToPath GetRegistryPolicy where
  toPath = const "/"

instance ToQuery GetRegistryPolicy where
  toQuery = const mempty

-- | /See:/ 'getRegistryPolicyResponse' smart constructor.
data GetRegistryPolicyResponse = GetRegistryPolicyResponse'
  { _grprrsRegistryId ::
      !(Maybe Text),
    _grprrsPolicyText ::
      !(Maybe Text),
    _grprrsResponseStatus ::
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

-- | Creates a value of 'GetRegistryPolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'grprrsRegistryId' - The ID of the registry.
--
-- * 'grprrsPolicyText' - The JSON text of the permissions policy for a registry.
--
-- * 'grprrsResponseStatus' - -- | The response status code.
getRegistryPolicyResponse ::
  -- | 'grprrsResponseStatus'
  Int ->
  GetRegistryPolicyResponse
getRegistryPolicyResponse pResponseStatus_ =
  GetRegistryPolicyResponse'
    { _grprrsRegistryId =
        Nothing,
      _grprrsPolicyText = Nothing,
      _grprrsResponseStatus = pResponseStatus_
    }

-- | The ID of the registry.
grprrsRegistryId :: Lens' GetRegistryPolicyResponse (Maybe Text)
grprrsRegistryId = lens _grprrsRegistryId (\s a -> s {_grprrsRegistryId = a})

-- | The JSON text of the permissions policy for a registry.
grprrsPolicyText :: Lens' GetRegistryPolicyResponse (Maybe Text)
grprrsPolicyText = lens _grprrsPolicyText (\s a -> s {_grprrsPolicyText = a})

-- | -- | The response status code.
grprrsResponseStatus :: Lens' GetRegistryPolicyResponse Int
grprrsResponseStatus = lens _grprrsResponseStatus (\s a -> s {_grprrsResponseStatus = a})

instance NFData GetRegistryPolicyResponse
