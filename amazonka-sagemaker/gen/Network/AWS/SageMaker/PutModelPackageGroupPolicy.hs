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
-- Module      : Network.AWS.SageMaker.PutModelPackageGroupPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Adds a resouce policy to control access to a model group. For information about resoure policies, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/access_policies_identity-vs-resource.html Identity-based policies and resource-based policies> in the /AWS Identity and Access Management User Guide./ .
module Network.AWS.SageMaker.PutModelPackageGroupPolicy
  ( -- * Creating a Request
    putModelPackageGroupPolicy,
    PutModelPackageGroupPolicy,

    -- * Request Lenses
    pmpgpModelPackageGroupName,
    pmpgpResourcePolicy,

    -- * Destructuring the Response
    putModelPackageGroupPolicyResponse,
    PutModelPackageGroupPolicyResponse,

    -- * Response Lenses
    pmpgprrsResponseStatus,
    pmpgprrsModelPackageGroupARN,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'putModelPackageGroupPolicy' smart constructor.
data PutModelPackageGroupPolicy = PutModelPackageGroupPolicy'
  { _pmpgpModelPackageGroupName ::
      !Text,
    _pmpgpResourcePolicy ::
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

-- | Creates a value of 'PutModelPackageGroupPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmpgpModelPackageGroupName' - The name of the model group to add a resource policy to.
--
-- * 'pmpgpResourcePolicy' - The resource policy for the model group.
putModelPackageGroupPolicy ::
  -- | 'pmpgpModelPackageGroupName'
  Text ->
  -- | 'pmpgpResourcePolicy'
  Text ->
  PutModelPackageGroupPolicy
putModelPackageGroupPolicy
  pModelPackageGroupName_
  pResourcePolicy_ =
    PutModelPackageGroupPolicy'
      { _pmpgpModelPackageGroupName =
          pModelPackageGroupName_,
        _pmpgpResourcePolicy = pResourcePolicy_
      }

-- | The name of the model group to add a resource policy to.
pmpgpModelPackageGroupName :: Lens' PutModelPackageGroupPolicy Text
pmpgpModelPackageGroupName = lens _pmpgpModelPackageGroupName (\s a -> s {_pmpgpModelPackageGroupName = a})

-- | The resource policy for the model group.
pmpgpResourcePolicy :: Lens' PutModelPackageGroupPolicy Text
pmpgpResourcePolicy = lens _pmpgpResourcePolicy (\s a -> s {_pmpgpResourcePolicy = a})

instance AWSRequest PutModelPackageGroupPolicy where
  type
    Rs PutModelPackageGroupPolicy =
      PutModelPackageGroupPolicyResponse
  request = postJSON sageMaker
  response =
    receiveJSON
      ( \s h x ->
          PutModelPackageGroupPolicyResponse'
            <$> (pure (fromEnum s))
            <*> (x .:> "ModelPackageGroupArn")
      )

instance Hashable PutModelPackageGroupPolicy

instance NFData PutModelPackageGroupPolicy

instance ToHeaders PutModelPackageGroupPolicy where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SageMaker.PutModelPackageGroupPolicy" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON PutModelPackageGroupPolicy where
  toJSON PutModelPackageGroupPolicy' {..} =
    object
      ( catMaybes
          [ Just
              ( "ModelPackageGroupName"
                  .= _pmpgpModelPackageGroupName
              ),
            Just ("ResourcePolicy" .= _pmpgpResourcePolicy)
          ]
      )

instance ToPath PutModelPackageGroupPolicy where
  toPath = const "/"

instance ToQuery PutModelPackageGroupPolicy where
  toQuery = const mempty

-- | /See:/ 'putModelPackageGroupPolicyResponse' smart constructor.
data PutModelPackageGroupPolicyResponse = PutModelPackageGroupPolicyResponse'
  { _pmpgprrsResponseStatus ::
      !Int,
    _pmpgprrsModelPackageGroupARN ::
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

-- | Creates a value of 'PutModelPackageGroupPolicyResponse' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pmpgprrsResponseStatus' - -- | The response status code.
--
-- * 'pmpgprrsModelPackageGroupARN' - The Amazon Resource Name (ARN) of the model package group.
putModelPackageGroupPolicyResponse ::
  -- | 'pmpgprrsResponseStatus'
  Int ->
  -- | 'pmpgprrsModelPackageGroupARN'
  Text ->
  PutModelPackageGroupPolicyResponse
putModelPackageGroupPolicyResponse
  pResponseStatus_
  pModelPackageGroupARN_ =
    PutModelPackageGroupPolicyResponse'
      { _pmpgprrsResponseStatus =
          pResponseStatus_,
        _pmpgprrsModelPackageGroupARN =
          pModelPackageGroupARN_
      }

-- | -- | The response status code.
pmpgprrsResponseStatus :: Lens' PutModelPackageGroupPolicyResponse Int
pmpgprrsResponseStatus = lens _pmpgprrsResponseStatus (\s a -> s {_pmpgprrsResponseStatus = a})

-- | The Amazon Resource Name (ARN) of the model package group.
pmpgprrsModelPackageGroupARN :: Lens' PutModelPackageGroupPolicyResponse Text
pmpgprrsModelPackageGroupARN = lens _pmpgprrsModelPackageGroupARN (\s a -> s {_pmpgprrsModelPackageGroupARN = a})

instance NFData PutModelPackageGroupPolicyResponse
