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
-- Module      : Network.AWS.SWF.Types.ActivityTaskTimeoutType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.ActivityTaskTimeoutType
  ( ActivityTaskTimeoutType
      ( ..,
        ActivityTaskTimeoutTypeHEARTBEAT,
        ActivityTaskTimeoutTypeSCHEDULETOCLOSE,
        ActivityTaskTimeoutTypeSCHEDULETOSTART,
        ActivityTaskTimeoutTypeSTARTTOCLOSE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ActivityTaskTimeoutType = ActivityTaskTimeoutType'
  { fromActivityTaskTimeoutType ::
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

pattern ActivityTaskTimeoutTypeHEARTBEAT :: ActivityTaskTimeoutType
pattern ActivityTaskTimeoutTypeHEARTBEAT = ActivityTaskTimeoutType' "HEARTBEAT"

pattern ActivityTaskTimeoutTypeSCHEDULETOCLOSE :: ActivityTaskTimeoutType
pattern ActivityTaskTimeoutTypeSCHEDULETOCLOSE = ActivityTaskTimeoutType' "SCHEDULE_TO_CLOSE"

pattern ActivityTaskTimeoutTypeSCHEDULETOSTART :: ActivityTaskTimeoutType
pattern ActivityTaskTimeoutTypeSCHEDULETOSTART = ActivityTaskTimeoutType' "SCHEDULE_TO_START"

pattern ActivityTaskTimeoutTypeSTARTTOCLOSE :: ActivityTaskTimeoutType
pattern ActivityTaskTimeoutTypeSTARTTOCLOSE = ActivityTaskTimeoutType' "START_TO_CLOSE"

{-# COMPLETE
  ActivityTaskTimeoutTypeHEARTBEAT,
  ActivityTaskTimeoutTypeSCHEDULETOCLOSE,
  ActivityTaskTimeoutTypeSCHEDULETOSTART,
  ActivityTaskTimeoutTypeSTARTTOCLOSE,
  ActivityTaskTimeoutType'
  #-}

instance Prelude.FromText ActivityTaskTimeoutType where
  parser = ActivityTaskTimeoutType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ActivityTaskTimeoutType where
  toText (ActivityTaskTimeoutType' x) = x

instance Prelude.Hashable ActivityTaskTimeoutType

instance Prelude.NFData ActivityTaskTimeoutType

instance Prelude.ToByteString ActivityTaskTimeoutType

instance Prelude.ToQuery ActivityTaskTimeoutType

instance Prelude.ToHeader ActivityTaskTimeoutType

instance Prelude.FromJSON ActivityTaskTimeoutType where
  parseJSON = Prelude.parseJSONText "ActivityTaskTimeoutType"
