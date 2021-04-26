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
-- Module      : Network.AWS.DynamoDB.Types.TimeToLiveStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DynamoDB.Types.TimeToLiveStatus
  ( TimeToLiveStatus
      ( ..,
        TimeToLiveStatusDISABLED,
        TimeToLiveStatusDISABLING,
        TimeToLiveStatusENABLED,
        TimeToLiveStatusENABLING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TimeToLiveStatus = TimeToLiveStatus'
  { fromTimeToLiveStatus ::
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

pattern TimeToLiveStatusDISABLED :: TimeToLiveStatus
pattern TimeToLiveStatusDISABLED = TimeToLiveStatus' "DISABLED"

pattern TimeToLiveStatusDISABLING :: TimeToLiveStatus
pattern TimeToLiveStatusDISABLING = TimeToLiveStatus' "DISABLING"

pattern TimeToLiveStatusENABLED :: TimeToLiveStatus
pattern TimeToLiveStatusENABLED = TimeToLiveStatus' "ENABLED"

pattern TimeToLiveStatusENABLING :: TimeToLiveStatus
pattern TimeToLiveStatusENABLING = TimeToLiveStatus' "ENABLING"

{-# COMPLETE
  TimeToLiveStatusDISABLED,
  TimeToLiveStatusDISABLING,
  TimeToLiveStatusENABLED,
  TimeToLiveStatusENABLING,
  TimeToLiveStatus'
  #-}

instance Prelude.FromText TimeToLiveStatus where
  parser = TimeToLiveStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText TimeToLiveStatus where
  toText (TimeToLiveStatus' x) = x

instance Prelude.Hashable TimeToLiveStatus

instance Prelude.NFData TimeToLiveStatus

instance Prelude.ToByteString TimeToLiveStatus

instance Prelude.ToQuery TimeToLiveStatus

instance Prelude.ToHeader TimeToLiveStatus

instance Prelude.FromJSON TimeToLiveStatus where
  parseJSON = Prelude.parseJSONText "TimeToLiveStatus"
