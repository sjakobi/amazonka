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
-- Module      : Network.AWS.WorkSpaces.Types.DedicatedTenancySupportEnum
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkSpaces.Types.DedicatedTenancySupportEnum
  ( DedicatedTenancySupportEnum
      ( ..,
        DedicatedTenancySupportEnumENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DedicatedTenancySupportEnum = DedicatedTenancySupportEnum'
  { fromDedicatedTenancySupportEnum ::
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

pattern DedicatedTenancySupportEnumENABLED :: DedicatedTenancySupportEnum
pattern DedicatedTenancySupportEnumENABLED = DedicatedTenancySupportEnum' "ENABLED"

{-# COMPLETE
  DedicatedTenancySupportEnumENABLED,
  DedicatedTenancySupportEnum'
  #-}

instance Prelude.FromText DedicatedTenancySupportEnum where
  parser = DedicatedTenancySupportEnum' Prelude.<$> Prelude.takeText

instance Prelude.ToText DedicatedTenancySupportEnum where
  toText (DedicatedTenancySupportEnum' x) = x

instance Prelude.Hashable DedicatedTenancySupportEnum

instance Prelude.NFData DedicatedTenancySupportEnum

instance Prelude.ToByteString DedicatedTenancySupportEnum

instance Prelude.ToQuery DedicatedTenancySupportEnum

instance Prelude.ToHeader DedicatedTenancySupportEnum

instance Prelude.ToJSON DedicatedTenancySupportEnum where
  toJSON = Prelude.toJSONText
