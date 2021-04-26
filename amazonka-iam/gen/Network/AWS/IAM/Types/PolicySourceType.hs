{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        PolicySourceTypeAwsManaged,
        PolicySourceTypeGroup,
        PolicySourceTypeNone,
        PolicySourceTypeResource,
        PolicySourceTypeRole,
        PolicySourceTypeUser,
        PolicySourceTypeUserManaged
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PolicySourceType = PolicySourceType'
  { fromPolicySourceType ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern PolicySourceTypeAwsManaged :: PolicySourceType
pattern PolicySourceTypeAwsManaged = PolicySourceType' "aws-managed"

pattern PolicySourceTypeGroup :: PolicySourceType
pattern PolicySourceTypeGroup = PolicySourceType' "group"

pattern PolicySourceTypeNone :: PolicySourceType
pattern PolicySourceTypeNone = PolicySourceType' "none"

pattern PolicySourceTypeResource :: PolicySourceType
pattern PolicySourceTypeResource = PolicySourceType' "resource"

pattern PolicySourceTypeRole :: PolicySourceType
pattern PolicySourceTypeRole = PolicySourceType' "role"

pattern PolicySourceTypeUser :: PolicySourceType
pattern PolicySourceTypeUser = PolicySourceType' "user"

pattern PolicySourceTypeUserManaged :: PolicySourceType
pattern PolicySourceTypeUserManaged = PolicySourceType' "user-managed"

{-# COMPLETE
  PolicySourceTypeAwsManaged,
  PolicySourceTypeGroup,
  PolicySourceTypeNone,
  PolicySourceTypeResource,
  PolicySourceTypeRole,
  PolicySourceTypeUser,
  PolicySourceTypeUserManaged,
  PolicySourceType'
  #-}

instance Prelude.FromText PolicySourceType where
  parser = PolicySourceType' Prelude.<$> Prelude.takeText

instance Prelude.ToText PolicySourceType where
  toText (PolicySourceType' x) = x

instance Prelude.Hashable PolicySourceType

instance Prelude.NFData PolicySourceType

instance Prelude.ToByteString PolicySourceType

instance Prelude.ToQuery PolicySourceType

instance Prelude.ToHeader PolicySourceType

instance Prelude.FromXML PolicySourceType where
  parseXML = Prelude.parseXMLText "PolicySourceType"
