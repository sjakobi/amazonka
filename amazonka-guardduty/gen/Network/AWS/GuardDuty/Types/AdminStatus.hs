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
-- Module      : Network.AWS.GuardDuty.Types.AdminStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.AdminStatus
  ( AdminStatus
      ( ..,
        AdminStatusDISABLEINPROGRESS,
        AdminStatusENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AdminStatus = AdminStatus'
  { fromAdminStatus ::
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

pattern AdminStatusDISABLEINPROGRESS :: AdminStatus
pattern AdminStatusDISABLEINPROGRESS = AdminStatus' "DISABLE_IN_PROGRESS"

pattern AdminStatusENABLED :: AdminStatus
pattern AdminStatusENABLED = AdminStatus' "ENABLED"

{-# COMPLETE
  AdminStatusDISABLEINPROGRESS,
  AdminStatusENABLED,
  AdminStatus'
  #-}

instance Prelude.FromText AdminStatus where
  parser = AdminStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText AdminStatus where
  toText (AdminStatus' x) = x

instance Prelude.Hashable AdminStatus

instance Prelude.NFData AdminStatus

instance Prelude.ToByteString AdminStatus

instance Prelude.ToQuery AdminStatus

instance Prelude.ToHeader AdminStatus

instance Prelude.FromJSON AdminStatus where
  parseJSON = Prelude.parseJSONText "AdminStatus"
