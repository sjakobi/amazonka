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
-- Module      : Network.AWS.IAM.DetachGroupPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
--
-- Removes the specified managed policy from the specified IAM group.
--
--
-- A group can also have inline policies embedded with it. To delete an inline policy, use 'DeleteGroupPolicy' . For information about policies, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html Managed policies and inline policies> in the /IAM User Guide/ .
module Network.AWS.IAM.DetachGroupPolicy
  ( -- * Creating a Request
    detachGroupPolicy,
    DetachGroupPolicy,

    -- * Request Lenses
    detGroupName,
    detPolicyARN,

    -- * Destructuring the Response
    detachGroupPolicyResponse,
    DetachGroupPolicyResponse,
  )
where

import Network.AWS.IAM.Types
import Network.AWS.Lens
import Network.AWS.Prelude
import Network.AWS.Request
import Network.AWS.Response

-- | /See:/ 'detachGroupPolicy' smart constructor.
data DetachGroupPolicy = DetachGroupPolicy'
  { _detGroupName ::
      !Text,
    _detPolicyARN :: !Text
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'DetachGroupPolicy' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'detGroupName' - The name (friendly name, not ARN) of the IAM group to detach the policy from. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
--
-- * 'detPolicyARN' - The Amazon Resource Name (ARN) of the IAM policy you want to detach. For more information about ARNs, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)> in the /AWS General Reference/ .
detachGroupPolicy ::
  -- | 'detGroupName'
  Text ->
  -- | 'detPolicyARN'
  Text ->
  DetachGroupPolicy
detachGroupPolicy pGroupName_ pPolicyARN_ =
  DetachGroupPolicy'
    { _detGroupName = pGroupName_,
      _detPolicyARN = pPolicyARN_
    }

-- | The name (friendly name, not ARN) of the IAM group to detach the policy from. This parameter allows (through its <http://wikipedia.org/wiki/regex regex pattern> ) a string of characters consisting of upper and lowercase alphanumeric characters with no spaces. You can also include any of the following characters: _+=,.@-
detGroupName :: Lens' DetachGroupPolicy Text
detGroupName = lens _detGroupName (\s a -> s {_detGroupName = a})

-- | The Amazon Resource Name (ARN) of the IAM policy you want to detach. For more information about ARNs, see <https://docs.aws.amazon.com/general/latest/gr/aws-arns-and-namespaces.html Amazon Resource Names (ARNs)> in the /AWS General Reference/ .
detPolicyARN :: Lens' DetachGroupPolicy Text
detPolicyARN = lens _detPolicyARN (\s a -> s {_detPolicyARN = a})

instance AWSRequest DetachGroupPolicy where
  type Rs DetachGroupPolicy = DetachGroupPolicyResponse
  request = postQuery iam
  response = receiveNull DetachGroupPolicyResponse'

instance Hashable DetachGroupPolicy

instance NFData DetachGroupPolicy

instance ToHeaders DetachGroupPolicy where
  toHeaders = const mempty

instance ToPath DetachGroupPolicy where
  toPath = const "/"

instance ToQuery DetachGroupPolicy where
  toQuery DetachGroupPolicy' {..} =
    mconcat
      [ "Action" =: ("DetachGroupPolicy" :: ByteString),
        "Version" =: ("2010-05-08" :: ByteString),
        "GroupName" =: _detGroupName,
        "PolicyArn" =: _detPolicyARN
      ]

-- | /See:/ 'detachGroupPolicyResponse' smart constructor.
data DetachGroupPolicyResponse = DetachGroupPolicyResponse'
  deriving
    ( Eq,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

-- | Creates a value of 'DetachGroupPolicyResponse' with the minimum fields required to make a request.
detachGroupPolicyResponse ::
  DetachGroupPolicyResponse
detachGroupPolicyResponse =
  DetachGroupPolicyResponse'

instance NFData DetachGroupPolicyResponse
