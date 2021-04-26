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
-- Module      : Network.AWS.GameLift.Types.ProtectionPolicy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GameLift.Types.ProtectionPolicy
  ( ProtectionPolicy
      ( ..,
        ProtectionPolicyFullProtection,
        ProtectionPolicyNoProtection
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ProtectionPolicy = ProtectionPolicy'
  { fromProtectionPolicy ::
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

pattern ProtectionPolicyFullProtection :: ProtectionPolicy
pattern ProtectionPolicyFullProtection = ProtectionPolicy' "FullProtection"

pattern ProtectionPolicyNoProtection :: ProtectionPolicy
pattern ProtectionPolicyNoProtection = ProtectionPolicy' "NoProtection"

{-# COMPLETE
  ProtectionPolicyFullProtection,
  ProtectionPolicyNoProtection,
  ProtectionPolicy'
  #-}

instance Prelude.FromText ProtectionPolicy where
  parser = ProtectionPolicy' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProtectionPolicy where
  toText (ProtectionPolicy' x) = x

instance Prelude.Hashable ProtectionPolicy

instance Prelude.NFData ProtectionPolicy

instance Prelude.ToByteString ProtectionPolicy

instance Prelude.ToQuery ProtectionPolicy

instance Prelude.ToHeader ProtectionPolicy

instance Prelude.ToJSON ProtectionPolicy where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ProtectionPolicy where
  parseJSON = Prelude.parseJSONText "ProtectionPolicy"
