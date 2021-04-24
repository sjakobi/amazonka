{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.Types.PolicyRole
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.PolicyRole where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about a role that a managed policy is attached to.
--
--
-- This data type is used as a response element in the 'ListEntitiesForPolicy' operation.
--
-- For more information about managed policies, refer to <https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html Managed policies and inline policies> in the /IAM User Guide/ .
--
--
-- /See:/ 'policyRole' smart constructor.
data PolicyRole = PolicyRole'
  { _prRoleId ::
      !(Maybe Text),
    _prRoleName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PolicyRole' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'prRoleId' - The stable and unique string identifying the role. For more information about IDs, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html IAM identifiers> in the /IAM User Guide/ .
--
-- * 'prRoleName' - The name (friendly name, not ARN) identifying the role.
policyRole ::
  PolicyRole
policyRole =
  PolicyRole'
    { _prRoleId = Nothing,
      _prRoleName = Nothing
    }

-- | The stable and unique string identifying the role. For more information about IDs, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html IAM identifiers> in the /IAM User Guide/ .
prRoleId :: Lens' PolicyRole (Maybe Text)
prRoleId = lens _prRoleId (\s a -> s {_prRoleId = a})

-- | The name (friendly name, not ARN) identifying the role.
prRoleName :: Lens' PolicyRole (Maybe Text)
prRoleName = lens _prRoleName (\s a -> s {_prRoleName = a})

instance FromXML PolicyRole where
  parseXML x =
    PolicyRole'
      <$> (x .@? "RoleId") <*> (x .@? "RoleName")

instance Hashable PolicyRole

instance NFData PolicyRole
