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
-- Module      : Network.AWS.ServiceCatalog.Types.AccessStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ServiceCatalog.Types.AccessStatus
  ( AccessStatus
      ( ..,
        AccessStatusDISABLED,
        AccessStatusENABLED,
        AccessStatusUNDERCHANGE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AccessStatus = AccessStatus'
  { fromAccessStatus ::
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

pattern AccessStatusDISABLED :: AccessStatus
pattern AccessStatusDISABLED = AccessStatus' "DISABLED"

pattern AccessStatusENABLED :: AccessStatus
pattern AccessStatusENABLED = AccessStatus' "ENABLED"

pattern AccessStatusUNDERCHANGE :: AccessStatus
pattern AccessStatusUNDERCHANGE = AccessStatus' "UNDER_CHANGE"

{-# COMPLETE
  AccessStatusDISABLED,
  AccessStatusENABLED,
  AccessStatusUNDERCHANGE,
  AccessStatus'
  #-}

instance Prelude.FromText AccessStatus where
  parser = AccessStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText AccessStatus where
  toText (AccessStatus' x) = x

instance Prelude.Hashable AccessStatus

instance Prelude.NFData AccessStatus

instance Prelude.ToByteString AccessStatus

instance Prelude.ToQuery AccessStatus

instance Prelude.ToHeader AccessStatus

instance Prelude.FromJSON AccessStatus where
  parseJSON = Prelude.parseJSONText "AccessStatus"
