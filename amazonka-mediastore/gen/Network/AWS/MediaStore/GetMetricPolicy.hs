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
-- Module      : Network.AWS.MediaStore.GetMetricPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Returns the metric policy for the specified container.
module Network.AWS.MediaStore.GetMetricPolicy
  ( -- * Creating a Request
    getMetricPolicy,
    GetMetricPolicy,

    -- * Request Lenses
    gmpContainerName,

    -- * Destructuring the Response
    getMetricPolicyResponse,
    GetMetricPolicyResponse,

    -- * Response Lenses
    gmprrsResponseStatus,
    gmprrsMetricPolicy,
  )
where

import Network.AWS.Lens
import Network.AWS.MediaStore.Types
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'getMetricPolicy' smart constructor.
newtype GetMetricPolicy = GetMetricPolicy'
  { _gmpContainerName ::
      Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'GetMetricPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmpContainerName' - The name of the container that is associated with the metric policy.
getMetricPolicy ::
  -- | 'gmpContainerName'
  Text ->
  GetMetricPolicy
getMetricPolicy pContainerName_ =
  GetMetricPolicy'
    { _gmpContainerName =
        pContainerName_
    }

-- | The name of the container that is associated with the metric policy.
gmpContainerName :: Lens' GetMetricPolicy Text
gmpContainerName = lens _gmpContainerName (\s a -> s {_gmpContainerName = a})

instance AWSRequest GetMetricPolicy where
  type Rs GetMetricPolicy = GetMetricPolicyResponse
  request = postJSON mediaStore
  response =
    receiveJSON
      ( \s h x ->
          GetMetricPolicyResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "MetricPolicy")
      )

instance Hashable GetMetricPolicy

instance NFData GetMetricPolicy

instance ToHeaders GetMetricPolicy where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "MediaStore_20170901.GetMetricPolicy" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetMetricPolicy where
  toJSON GetMetricPolicy' {..} =
    object
      ( catMaybes
          [Just ("ContainerName" .= _gmpContainerName)]
      )

instance ToPath GetMetricPolicy where
  toPath = const "/"

instance ToQuery GetMetricPolicy where
  toQuery = const mempty

-- | /See:/ 'getMetricPolicyResponse' smart constructor.
data GetMetricPolicyResponse = GetMetricPolicyResponse'
  { _gmprrsResponseStatus ::
      !Int,
    _gmprrsMetricPolicy ::
      !MetricPolicy
  }
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'GetMetricPolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmprrsResponseStatus' - -- | The response status code.
--
-- * 'gmprrsMetricPolicy' - The metric policy that is associated with the specific container.
getMetricPolicyResponse ::
  -- | 'gmprrsResponseStatus'
  Int ->
  -- | 'gmprrsMetricPolicy'
  MetricPolicy ->
  GetMetricPolicyResponse
getMetricPolicyResponse
  pResponseStatus_
  pMetricPolicy_ =
    GetMetricPolicyResponse'
      { _gmprrsResponseStatus =
          pResponseStatus_,
        _gmprrsMetricPolicy = pMetricPolicy_
      }

-- | -- | The response status code.
gmprrsResponseStatus :: Lens' GetMetricPolicyResponse Int
gmprrsResponseStatus = lens _gmprrsResponseStatus (\s a -> s {_gmprrsResponseStatus = a})

-- | The metric policy that is associated with the specific container.
gmprrsMetricPolicy :: Lens' GetMetricPolicyResponse MetricPolicy
gmprrsMetricPolicy = lens _gmprrsMetricPolicy (\s a -> s {_gmprrsMetricPolicy = a})

instance NFData GetMetricPolicyResponse
