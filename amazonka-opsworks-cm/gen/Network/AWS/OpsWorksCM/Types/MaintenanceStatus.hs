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
-- Module      : Network.AWS.OpsWorksCM.Types.MaintenanceStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorksCM.Types.MaintenanceStatus
  ( MaintenanceStatus
      ( ..,
        MaintenanceStatusFAILED,
        MaintenanceStatusSUCCESS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MaintenanceStatus = MaintenanceStatus'
  { fromMaintenanceStatus ::
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

pattern MaintenanceStatusFAILED :: MaintenanceStatus
pattern MaintenanceStatusFAILED = MaintenanceStatus' "FAILED"

pattern MaintenanceStatusSUCCESS :: MaintenanceStatus
pattern MaintenanceStatusSUCCESS = MaintenanceStatus' "SUCCESS"

{-# COMPLETE
  MaintenanceStatusFAILED,
  MaintenanceStatusSUCCESS,
  MaintenanceStatus'
  #-}

instance Prelude.FromText MaintenanceStatus where
  parser = MaintenanceStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText MaintenanceStatus where
  toText (MaintenanceStatus' x) = x

instance Prelude.Hashable MaintenanceStatus

instance Prelude.NFData MaintenanceStatus

instance Prelude.ToByteString MaintenanceStatus

instance Prelude.ToQuery MaintenanceStatus

instance Prelude.ToHeader MaintenanceStatus

instance Prelude.FromJSON MaintenanceStatus where
  parseJSON = Prelude.parseJSONText "MaintenanceStatus"
