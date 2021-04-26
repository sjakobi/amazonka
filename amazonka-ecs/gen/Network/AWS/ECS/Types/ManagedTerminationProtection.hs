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
-- Module      : Network.AWS.ECS.Types.ManagedTerminationProtection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.ManagedTerminationProtection
  ( ManagedTerminationProtection
      ( ..,
        ManagedTerminationProtectionDISABLED,
        ManagedTerminationProtectionENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ManagedTerminationProtection = ManagedTerminationProtection'
  { fromManagedTerminationProtection ::
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

pattern ManagedTerminationProtectionDISABLED :: ManagedTerminationProtection
pattern ManagedTerminationProtectionDISABLED = ManagedTerminationProtection' "DISABLED"

pattern ManagedTerminationProtectionENABLED :: ManagedTerminationProtection
pattern ManagedTerminationProtectionENABLED = ManagedTerminationProtection' "ENABLED"

{-# COMPLETE
  ManagedTerminationProtectionDISABLED,
  ManagedTerminationProtectionENABLED,
  ManagedTerminationProtection'
  #-}

instance Prelude.FromText ManagedTerminationProtection where
  parser = ManagedTerminationProtection' Prelude.<$> Prelude.takeText

instance Prelude.ToText ManagedTerminationProtection where
  toText (ManagedTerminationProtection' x) = x

instance Prelude.Hashable ManagedTerminationProtection

instance Prelude.NFData ManagedTerminationProtection

instance Prelude.ToByteString ManagedTerminationProtection

instance Prelude.ToQuery ManagedTerminationProtection

instance Prelude.ToHeader ManagedTerminationProtection

instance Prelude.ToJSON ManagedTerminationProtection where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ManagedTerminationProtection where
  parseJSON = Prelude.parseJSONText "ManagedTerminationProtection"
