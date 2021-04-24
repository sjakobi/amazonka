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
-- Module      : Network.AWS.SageMaker.GetModelPackageGroupPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Gets a resource policy that manages access for a model group. For information about resource policies, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_identity-vs-resource.html Identity-based policies and resource-based policies> in the /AWS Identity and Access Management User Guide./ .
module Network.AWS.SageMaker.GetModelPackageGroupPolicy
  ( -- * Creating a Request
    getModelPackageGroupPolicy,
    GetModelPackageGroupPolicy,

    -- * Request Lenses
    gmpgpModelPackageGroupName,

    -- * Destructuring the Response
    getModelPackageGroupPolicyResponse,
    GetModelPackageGroupPolicyResponse,

    -- * Response Lenses
    gmpgprrsResponseStatus,
    gmpgprrsResourcePolicy,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'getModelPackageGroupPolicy' smart constructor.
newtype GetModelPackageGroupPolicy = GetModelPackageGroupPolicy'
  { _gmpgpModelPackageGroupName ::
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

-- | Creates a value of 'GetModelPackageGroupPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmpgpModelPackageGroupName' - The name of the model group for which to get the resource policy.
getModelPackageGroupPolicy ::
  -- | 'gmpgpModelPackageGroupName'
  Text ->
  GetModelPackageGroupPolicy
getModelPackageGroupPolicy pModelPackageGroupName_ =
  GetModelPackageGroupPolicy'
    { _gmpgpModelPackageGroupName =
        pModelPackageGroupName_
    }

-- | The name of the model group for which to get the resource policy.
gmpgpModelPackageGroupName :: Lens' GetModelPackageGroupPolicy Text
gmpgpModelPackageGroupName = lens _gmpgpModelPackageGroupName (\s a -> s {_gmpgpModelPackageGroupName = a})

instance AWSRequest GetModelPackageGroupPolicy where
  type
    Rs GetModelPackageGroupPolicy =
      GetModelPackageGroupPolicyResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          GetModelPackageGroupPolicyResponse'
            <$> (pure (fromEnum s)) <*> (x .:> "ResourcePolicy")
      )

instance Hashable GetModelPackageGroupPolicy

instance NFData GetModelPackageGroupPolicy

instance ToHeaders GetModelPackageGroupPolicy where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SageMaker.GetModelPackageGroupPolicy" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON GetModelPackageGroupPolicy where
  toJSON GetModelPackageGroupPolicy' {..} =
    object
      ( catMaybes
          [ Just
              ( "ModelPackageGroupName"
                  .= _gmpgpModelPackageGroupName
              )
          ]
      )

instance ToPath GetModelPackageGroupPolicy where
  toPath = const "/"

instance ToQuery GetModelPackageGroupPolicy where
  toQuery = const mempty

-- | /See:/ 'getModelPackageGroupPolicyResponse' smart constructor.
data GetModelPackageGroupPolicyResponse = GetModelPackageGroupPolicyResponse'
  { _gmpgprrsResponseStatus ::
      !Int,
    _gmpgprrsResourcePolicy ::
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

-- | Creates a value of 'GetModelPackageGroupPolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'gmpgprrsResponseStatus' - -- | The response status code.
--
-- * 'gmpgprrsResourcePolicy' - The resource policy for the model group.
getModelPackageGroupPolicyResponse ::
  -- | 'gmpgprrsResponseStatus'
  Int ->
  -- | 'gmpgprrsResourcePolicy'
  Text ->
  GetModelPackageGroupPolicyResponse
getModelPackageGroupPolicyResponse
  pResponseStatus_
  pResourcePolicy_ =
    GetModelPackageGroupPolicyResponse'
      { _gmpgprrsResponseStatus =
          pResponseStatus_,
        _gmpgprrsResourcePolicy =
          pResourcePolicy_
      }

-- | -- | The response status code.
gmpgprrsResponseStatus :: Lens' GetModelPackageGroupPolicyResponse Int
gmpgprrsResponseStatus = lens _gmpgprrsResponseStatus (\s a -> s {_gmpgprrsResponseStatus = a})

-- | The resource policy for the model group.
gmpgprrsResourcePolicy :: Lens' GetModelPackageGroupPolicyResponse Text
gmpgprrsResourcePolicy = lens _gmpgprrsResourcePolicy (\s a -> s {_gmpgprrsResourcePolicy = a})

instance NFData GetModelPackageGroupPolicyResponse
