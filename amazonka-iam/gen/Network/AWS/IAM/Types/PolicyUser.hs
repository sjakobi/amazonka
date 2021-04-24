{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.Types.PolicyUser
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.PolicyUser where

import Network.AWS.Lens
import Network.AWS.Prelude

-- | Contains information about a user that a managed policy is attached to.
--
--
-- This data type is used as a response element in the 'ListEntitiesForPolicy' operation.
--
-- For more information about managed policies, refer to <https://docs.aws.amazon.com/IAM/latest/UserGuide/policies-managed-vs-inline.html Managed policies and inline policies> in the /IAM User Guide/ .
--
--
-- /See:/ 'policyUser' smart constructor.
data PolicyUser = PolicyUser'
  { _puUserId ::
      !(Maybe Text),
    _puUserName :: !(Maybe Text)
  }
  deriving (Eq, Read, Show, Data, Typeable, Generic)

-- | Creates a value of 'PolicyUser' with the minimum fields required to make a request.
--
-- Use one of the following lenses to modify other fields as desired:
--
-- * 'puUserId' - The stable and unique string identifying the user. For more information about IDs, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html IAM identifiers> in the /IAM User Guide/ .
--
-- * 'puUserName' - The name (friendly name, not ARN) identifying the user.
policyUser ::
  PolicyUser
policyUser =
  PolicyUser'
    { _puUserId = Nothing,
      _puUserName = Nothing
    }

-- | The stable and unique string identifying the user. For more information about IDs, see <https://docs.aws.amazon.com/IAM/latest/UserGuide/reference_identifiers.html IAM identifiers> in the /IAM User Guide/ .
puUserId :: Lens' PolicyUser (Maybe Text)
puUserId = lens _puUserId (\s a -> s {_puUserId = a})

-- | The name (friendly name, not ARN) identifying the user.
puUserName :: Lens' PolicyUser (Maybe Text)
puUserName = lens _puUserName (\s a -> s {_puUserName = a})

instance FromXML PolicyUser where
  parseXML x =
    PolicyUser'
      <$> (x .@? "UserId") <*> (x .@? "UserName")

instance Hashable PolicyUser

instance NFData PolicyUser
