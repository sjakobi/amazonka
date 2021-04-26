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
-- Module      : Network.AWS.Greengrass.Types.UpdateTargetsArchitecture
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Greengrass.Types.UpdateTargetsArchitecture
  ( UpdateTargetsArchitecture
      ( ..,
        UpdateTargetsArchitectureAARCH64,
        UpdateTargetsArchitectureArmv6l,
        UpdateTargetsArchitectureArmv7l,
        UpdateTargetsArchitectureX8664
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The architecture of the cores which are the targets of an update.
newtype UpdateTargetsArchitecture = UpdateTargetsArchitecture'
  { fromUpdateTargetsArchitecture ::
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

pattern UpdateTargetsArchitectureAARCH64 :: UpdateTargetsArchitecture
pattern UpdateTargetsArchitectureAARCH64 = UpdateTargetsArchitecture' "aarch64"

pattern UpdateTargetsArchitectureArmv6l :: UpdateTargetsArchitecture
pattern UpdateTargetsArchitectureArmv6l = UpdateTargetsArchitecture' "armv6l"

pattern UpdateTargetsArchitectureArmv7l :: UpdateTargetsArchitecture
pattern UpdateTargetsArchitectureArmv7l = UpdateTargetsArchitecture' "armv7l"

pattern UpdateTargetsArchitectureX8664 :: UpdateTargetsArchitecture
pattern UpdateTargetsArchitectureX8664 = UpdateTargetsArchitecture' "x86_64"

{-# COMPLETE
  UpdateTargetsArchitectureAARCH64,
  UpdateTargetsArchitectureArmv6l,
  UpdateTargetsArchitectureArmv7l,
  UpdateTargetsArchitectureX8664,
  UpdateTargetsArchitecture'
  #-}

instance Prelude.FromText UpdateTargetsArchitecture where
  parser = UpdateTargetsArchitecture' Prelude.<$> Prelude.takeText

instance Prelude.ToText UpdateTargetsArchitecture where
  toText (UpdateTargetsArchitecture' x) = x

instance Prelude.Hashable UpdateTargetsArchitecture

instance Prelude.NFData UpdateTargetsArchitecture

instance Prelude.ToByteString UpdateTargetsArchitecture

instance Prelude.ToQuery UpdateTargetsArchitecture

instance Prelude.ToHeader UpdateTargetsArchitecture

instance Prelude.ToJSON UpdateTargetsArchitecture where
  toJSON = Prelude.toJSONText
