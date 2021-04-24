{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.Types.PolicyGroup
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.PolicyGroup where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about a group that a managed policy is attached to.
--
--
-- This data type is used as a response element in the 'ListEntitiesForPolicy' operation.
--
-- For more information about managed policies, refer to <https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html Managed policies and inline policies> in the /IAM User Guide/ .
--
--
-- /See:/ 'policyGroup' smart constructor.
data PolicyGroup = PolicyGroup'
  { _pgGroupName ::
      !(Maybe Text),
    _pgGroupId :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PolicyGroup' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'pgGroupName' - The name (friendly name, not ARN) identifying the group.
--
-- * 'pgGroupId' - The stable and unique string identifying the group. For more information about IDs, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html IAM identifiers> in the /IAM User Guide/ .
policyGroup ::
  PolicyGroup
policyGroup =
  PolicyGroup'
    { _pgGroupName = Nothing,
      _pgGroupId = Nothing
    }

-- | The name (friendly name, not ARN) identifying the group.
pgGroupName :: Lens' PolicyGroup (Maybe Text)
pgGroupName = lens _pgGroupName (\s a -> s {_pgGroupName = a})

-- | The stable and unique string identifying the group. For more information about IDs, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html IAM identifiers> in the /IAM User Guide/ .
pgGroupId :: Lens' PolicyGroup (Maybe Text)
pgGroupId = lens _pgGroupId (\s a -> s {_pgGroupId = a})

instance FromXML PolicyGroup where
  parseXML x =
    PolicyGroup'
      <$> (x .@? "GroupName") <*> (x .@? "GroupId")

instance Hashable PolicyGroup

instance NFData PolicyGroup
