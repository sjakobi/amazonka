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
-- Module      : Network.AWS.Shield.Types.AutoRenew
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Shield.Types.AutoRenew
  ( AutoRenew
      ( ..,
        AutoRenewDISABLED,
        AutoRenewENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AutoRenew = AutoRenew'
  { fromAutoRenew ::
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

pattern AutoRenewDISABLED :: AutoRenew
pattern AutoRenewDISABLED = AutoRenew' "DISABLED"

pattern AutoRenewENABLED :: AutoRenew
pattern AutoRenewENABLED = AutoRenew' "ENABLED"

{-# COMPLETE
  AutoRenewDISABLED,
  AutoRenewENABLED,
  AutoRenew'
  #-}

instance Prelude.FromText AutoRenew where
  parser = AutoRenew' Prelude.<$> Prelude.takeText

instance Prelude.ToText AutoRenew where
  toText (AutoRenew' x) = x

instance Prelude.Hashable AutoRenew

instance Prelude.NFData AutoRenew

instance Prelude.ToByteString AutoRenew

instance Prelude.ToQuery AutoRenew

instance Prelude.ToHeader AutoRenew

instance Prelude.ToJSON AutoRenew where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AutoRenew where
  parseJSON = Prelude.parseJSONText "AutoRenew"
