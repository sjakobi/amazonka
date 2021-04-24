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
-- Module      : Network.AWS.SageMaker.DeleteModelPackageGroupPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Deletes a model group resource policy.
module Network.AWS.SageMaker.DeleteModelPackageGroupPolicy
  ( -- * Creating a Request
    deleteModelPackageGroupPolicy,
    DeleteModelPackageGroupPolicy,

    -- * Request Lenses
    dmpgpModelPackageGroupName,

    -- * Destructuring the Response
    deleteModelPackageGroupPolicyResponse,
    DeleteModelPackageGroupPolicyResponse,
  )
where

import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response
import Network.AWS.SageMaker.Types

-- | /See:/ 'deleteModelPackageGroupPolicy' smart constructor.
newtype DeleteModelPackageGroupPolicy = DeleteModelPackageGroupPolicy'
  { _dmpgpModelPackageGroupName ::
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

-- | Creates a value of 'DeleteModelPackageGroupPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'dmpgpModelPackageGroupName' - The name of the model group for which to delete the policy.
deleteModelPackageGroupPolicy ::
  -- | 'dmpgpModelPackageGroupName'
  Text ->
  DeleteModelPackageGroupPolicy
deleteModelPackageGroupPolicy pModelPackageGroupName_ =
  DeleteModelPackageGroupPolicy'
    { _dmpgpModelPackageGroupName =
        pModelPackageGroupName_
    }

-- | The name of the model group for which to delete the policy.
dmpgpModelPackageGroupName :: Lens' DeleteModelPackageGroupPolicy Text
dmpgpModelPackageGroupName = lens _dmpgpModelPackageGroupName (\s a -> s {_dmpgpModelPackageGroupName = a})

instance AWSRequest DeleteModelPackageGroupPolicy where
  type
    Rs DeleteModelPackageGroupPolicy =
      DeleteModelPackageGroupPolicyResponse
  request = postJSON sageMaker
  response =
    receiveNull DeleteModelPackageGroupPolicyResponse'

instance Hashable DeleteModelPackageGroupPolicy

instance NFData DeleteModelPackageGroupPolicy

instance ToHeaders DeleteModelPackageGroupPolicy where
  toHeaders =
    const
      ( mconcat
          [ "X-Amz-Target"
              =# ( "SageMaker.DeleteModelPackageGroupPolicy" ::
                     ByteString
                 ),
            "Content-Type"
              =# ("application/x-amz-json-1.1" :: ByteString)
          ]
      )

instance ToJSON DeleteModelPackageGroupPolicy where
  toJSON DeleteModelPackageGroupPolicy' {..} =
    object
      ( catMaybes
          [ Just
              ( "ModelPackageGroupName"
                  .= _dmpgpModelPackageGroupName
              )
          ]
      )

instance ToPath DeleteModelPackageGroupPolicy where
  toPath = const "/"

instance ToQuery DeleteModelPackageGroupPolicy where
  toQuery = const mempty

-- | /See:/ 'deleteModelPackageGroupPolicyResponse' smart constructor.
data DeleteModelPackageGroupPolicyResponse = DeleteModelPackageGroupPolicyResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DeleteModelPackageGroupPolicyResponse' with the minimum fields required to make a request.
deleteModelPackageGroupPolicyResponse ::
  DeleteModelPackageGroupPolicyResponse
deleteModelPackageGroupPolicyResponse =
  DeleteModelPackageGroupPolicyResponse'

instance NFData DeleteModelPackageGroupPolicyResponse
