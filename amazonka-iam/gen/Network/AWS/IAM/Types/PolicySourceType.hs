{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.IAM.Types.PolicySourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.PolicySourceType
  ( PolicySourceType
      ( ..,
        AWSManaged,
        Group,
        None,
        Resource,
        Role,
        User,
        UserManaged
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PolicySourceType = PolicySourceType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AWSManaged :: PolicySourceType
pattern AWSManaged = PolicySourceType' "aws-managed"

pattern Group :: PolicySourceType
pattern Group = PolicySourceType' "group"

pattern None :: PolicySourceType
pattern None = PolicySourceType' "none"

pattern Resource :: PolicySourceType
pattern Resource = PolicySourceType' "resource"

pattern Role :: PolicySourceType
pattern Role = PolicySourceType' "role"

pattern User :: PolicySourceType
pattern User = PolicySourceType' "user"

pattern UserManaged :: PolicySourceType
pattern UserManaged = PolicySourceType' "user-managed"

{-# COMPLETE
  AWSManaged,
  Group,
  None,
  Resource,
  Role,
  User,
  UserManaged,
  PolicySourceType'
  #-}

instance FromText PolicySourceType where
  parser = (PolicySourceType' . mk) <$> takeText

instance ToText PolicySourceType where
  toText (PolicySourceType' ci) = original ci

instance Hashable PolicySourceType

instance NFData PolicySourceType

instance ToByteString PolicySourceType

instance ToQuery PolicySourceType

instance ToHeader PolicySourceType

instance FromXML PolicySourceType where
  parseXML = parseXMLText "PolicySourceType"
