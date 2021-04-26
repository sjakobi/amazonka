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
-- Module      : Network.AWS.IAM.Types.PolicyOwnerEntityType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IAM.Types.PolicyOwnerEntityType
  ( PolicyOwnerEntityType
      ( ..,
        PolicyOwnerEntityTypeGROUP,
        PolicyOwnerEntityTypeROLE,
        PolicyOwnerEntityTypeUSER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PolicyOwnerEntityType = PolicyOwnerEntityType'
  { fromPolicyOwnerEntityType ::
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

pattern PolicyOwnerEntityTypeGROUP :: PolicyOwnerEntityType
pattern PolicyOwnerEntityTypeGROUP = PolicyOwnerEntityType' "GROUP"

pattern PolicyOwnerEntityTypeROLE :: PolicyOwnerEntityType
pattern PolicyOwnerEntityTypeROLE = PolicyOwnerEntityType' "ROLE"

pattern PolicyOwnerEntityTypeUSER :: PolicyOwnerEntityType
pattern PolicyOwnerEntityTypeUSER = PolicyOwnerEntityType' "USER"

{-# COMPLETE
  PolicyOwnerEntityTypeGROUP,
  PolicyOwnerEntityTypeROLE,
  PolicyOwnerEntityTypeUSER,
  PolicyOwnerEntityType'
  #-}

instance Prelude.FromText PolicyOwnerEntityType where
  parser = PolicyOwnerEntityType' Prelude.<$> Prelude.takeText

instance Prelude.ToText PolicyOwnerEntityType where
  toText (PolicyOwnerEntityType' x) = x

instance Prelude.Hashable PolicyOwnerEntityType

instance Prelude.NFData PolicyOwnerEntityType

instance Prelude.ToByteString PolicyOwnerEntityType

instance Prelude.ToQuery PolicyOwnerEntityType

instance Prelude.ToHeader PolicyOwnerEntityType

instance Prelude.FromXML PolicyOwnerEntityType where
  parseXML = Prelude.parseXMLText "PolicyOwnerEntityType"
