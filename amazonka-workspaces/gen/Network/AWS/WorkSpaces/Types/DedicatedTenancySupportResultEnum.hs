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
-- Module      : Network.AWS.WorkSpaces.Types.DedicatedTenancySupportResultEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.DedicatedTenancySupportResultEnum
  ( DedicatedTenancySupportResultEnum
      ( ..,
        DedicatedTenancySupportResultEnumDISABLED,
        DedicatedTenancySupportResultEnumENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DedicatedTenancySupportResultEnum = DedicatedTenancySupportResultEnum'
  { fromDedicatedTenancySupportResultEnum ::
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

pattern DedicatedTenancySupportResultEnumDISABLED :: DedicatedTenancySupportResultEnum
pattern DedicatedTenancySupportResultEnumDISABLED = DedicatedTenancySupportResultEnum' "DISABLED"

pattern DedicatedTenancySupportResultEnumENABLED :: DedicatedTenancySupportResultEnum
pattern DedicatedTenancySupportResultEnumENABLED = DedicatedTenancySupportResultEnum' "ENABLED"

{-# COMPLETE
  DedicatedTenancySupportResultEnumDISABLED,
  DedicatedTenancySupportResultEnumENABLED,
  DedicatedTenancySupportResultEnum'
  #-}

instance Prelude.FromText DedicatedTenancySupportResultEnum where
  parser = DedicatedTenancySupportResultEnum' Prelude.<$> Prelude.takeText

instance Prelude.ToText DedicatedTenancySupportResultEnum where
  toText (DedicatedTenancySupportResultEnum' x) = x

instance Prelude.Hashable DedicatedTenancySupportResultEnum

instance Prelude.NFData DedicatedTenancySupportResultEnum

instance Prelude.ToByteString DedicatedTenancySupportResultEnum

instance Prelude.ToQuery DedicatedTenancySupportResultEnum

instance Prelude.ToHeader DedicatedTenancySupportResultEnum

instance Prelude.FromJSON DedicatedTenancySupportResultEnum where
  parseJSON = Prelude.parseJSONText "DedicatedTenancySupportResultEnum"
