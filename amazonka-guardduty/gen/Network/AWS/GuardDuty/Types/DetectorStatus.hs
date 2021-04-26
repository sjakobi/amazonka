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
-- Module      : Network.AWS.GuardDuty.Types.DetectorStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.GuardDuty.Types.DetectorStatus
  ( DetectorStatus
      ( ..,
        DetectorStatusDISABLED,
        DetectorStatusENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DetectorStatus = DetectorStatus'
  { fromDetectorStatus ::
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

pattern DetectorStatusDISABLED :: DetectorStatus
pattern DetectorStatusDISABLED = DetectorStatus' "DISABLED"

pattern DetectorStatusENABLED :: DetectorStatus
pattern DetectorStatusENABLED = DetectorStatus' "ENABLED"

{-# COMPLETE
  DetectorStatusDISABLED,
  DetectorStatusENABLED,
  DetectorStatus'
  #-}

instance Prelude.FromText DetectorStatus where
  parser = DetectorStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText DetectorStatus where
  toText (DetectorStatus' x) = x

instance Prelude.Hashable DetectorStatus

instance Prelude.NFData DetectorStatus

instance Prelude.ToByteString DetectorStatus

instance Prelude.ToQuery DetectorStatus

instance Prelude.ToHeader DetectorStatus

instance Prelude.FromJSON DetectorStatus where
  parseJSON = Prelude.parseJSONText "DetectorStatus"
