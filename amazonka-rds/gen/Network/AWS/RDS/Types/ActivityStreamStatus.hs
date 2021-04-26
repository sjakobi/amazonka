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
-- Module      : Network.AWS.RDS.Types.ActivityStreamStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.ActivityStreamStatus
  ( ActivityStreamStatus
      ( ..,
        ActivityStreamStatusStarted,
        ActivityStreamStatusStarting,
        ActivityStreamStatusStopped,
        ActivityStreamStatusStopping
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ActivityStreamStatus = ActivityStreamStatus'
  { fromActivityStreamStatus ::
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

pattern ActivityStreamStatusStarted :: ActivityStreamStatus
pattern ActivityStreamStatusStarted = ActivityStreamStatus' "started"

pattern ActivityStreamStatusStarting :: ActivityStreamStatus
pattern ActivityStreamStatusStarting = ActivityStreamStatus' "starting"

pattern ActivityStreamStatusStopped :: ActivityStreamStatus
pattern ActivityStreamStatusStopped = ActivityStreamStatus' "stopped"

pattern ActivityStreamStatusStopping :: ActivityStreamStatus
pattern ActivityStreamStatusStopping = ActivityStreamStatus' "stopping"

{-# COMPLETE
  ActivityStreamStatusStarted,
  ActivityStreamStatusStarting,
  ActivityStreamStatusStopped,
  ActivityStreamStatusStopping,
  ActivityStreamStatus'
  #-}

instance Prelude.FromText ActivityStreamStatus where
  parser = ActivityStreamStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ActivityStreamStatus where
  toText (ActivityStreamStatus' x) = x

instance Prelude.Hashable ActivityStreamStatus

instance Prelude.NFData ActivityStreamStatus

instance Prelude.ToByteString ActivityStreamStatus

instance Prelude.ToQuery ActivityStreamStatus

instance Prelude.ToHeader ActivityStreamStatus

instance Prelude.FromXML ActivityStreamStatus where
  parseXML = Prelude.parseXMLText "ActivityStreamStatus"
