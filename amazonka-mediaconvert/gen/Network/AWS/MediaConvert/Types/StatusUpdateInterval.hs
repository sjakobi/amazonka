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
-- Module      : Network.AWS.MediaConvert.Types.StatusUpdateInterval
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.StatusUpdateInterval
  ( StatusUpdateInterval
      ( ..,
        StatusUpdateIntervalSECONDS10,
        StatusUpdateIntervalSECONDS12,
        StatusUpdateIntervalSECONDS120,
        StatusUpdateIntervalSECONDS15,
        StatusUpdateIntervalSECONDS180,
        StatusUpdateIntervalSECONDS20,
        StatusUpdateIntervalSECONDS240,
        StatusUpdateIntervalSECONDS30,
        StatusUpdateIntervalSECONDS300,
        StatusUpdateIntervalSECONDS360,
        StatusUpdateIntervalSECONDS420,
        StatusUpdateIntervalSECONDS480,
        StatusUpdateIntervalSECONDS540,
        StatusUpdateIntervalSECONDS60,
        StatusUpdateIntervalSECONDS600
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specify how often MediaConvert sends STATUS_UPDATE events to Amazon
-- CloudWatch Events. Set the interval, in seconds, between status updates.
-- MediaConvert sends an update at this interval from the time the service
-- begins processing your job to the time it completes the transcode or
-- encounters an error.
newtype StatusUpdateInterval = StatusUpdateInterval'
  { fromStatusUpdateInterval ::
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

pattern StatusUpdateIntervalSECONDS10 :: StatusUpdateInterval
pattern StatusUpdateIntervalSECONDS10 = StatusUpdateInterval' "SECONDS_10"

pattern StatusUpdateIntervalSECONDS12 :: StatusUpdateInterval
pattern StatusUpdateIntervalSECONDS12 = StatusUpdateInterval' "SECONDS_12"

pattern StatusUpdateIntervalSECONDS120 :: StatusUpdateInterval
pattern StatusUpdateIntervalSECONDS120 = StatusUpdateInterval' "SECONDS_120"

pattern StatusUpdateIntervalSECONDS15 :: StatusUpdateInterval
pattern StatusUpdateIntervalSECONDS15 = StatusUpdateInterval' "SECONDS_15"

pattern StatusUpdateIntervalSECONDS180 :: StatusUpdateInterval
pattern StatusUpdateIntervalSECONDS180 = StatusUpdateInterval' "SECONDS_180"

pattern StatusUpdateIntervalSECONDS20 :: StatusUpdateInterval
pattern StatusUpdateIntervalSECONDS20 = StatusUpdateInterval' "SECONDS_20"

pattern StatusUpdateIntervalSECONDS240 :: StatusUpdateInterval
pattern StatusUpdateIntervalSECONDS240 = StatusUpdateInterval' "SECONDS_240"

pattern StatusUpdateIntervalSECONDS30 :: StatusUpdateInterval
pattern StatusUpdateIntervalSECONDS30 = StatusUpdateInterval' "SECONDS_30"

pattern StatusUpdateIntervalSECONDS300 :: StatusUpdateInterval
pattern StatusUpdateIntervalSECONDS300 = StatusUpdateInterval' "SECONDS_300"

pattern StatusUpdateIntervalSECONDS360 :: StatusUpdateInterval
pattern StatusUpdateIntervalSECONDS360 = StatusUpdateInterval' "SECONDS_360"

pattern StatusUpdateIntervalSECONDS420 :: StatusUpdateInterval
pattern StatusUpdateIntervalSECONDS420 = StatusUpdateInterval' "SECONDS_420"

pattern StatusUpdateIntervalSECONDS480 :: StatusUpdateInterval
pattern StatusUpdateIntervalSECONDS480 = StatusUpdateInterval' "SECONDS_480"

pattern StatusUpdateIntervalSECONDS540 :: StatusUpdateInterval
pattern StatusUpdateIntervalSECONDS540 = StatusUpdateInterval' "SECONDS_540"

pattern StatusUpdateIntervalSECONDS60 :: StatusUpdateInterval
pattern StatusUpdateIntervalSECONDS60 = StatusUpdateInterval' "SECONDS_60"

pattern StatusUpdateIntervalSECONDS600 :: StatusUpdateInterval
pattern StatusUpdateIntervalSECONDS600 = StatusUpdateInterval' "SECONDS_600"

{-# COMPLETE
  StatusUpdateIntervalSECONDS10,
  StatusUpdateIntervalSECONDS12,
  StatusUpdateIntervalSECONDS120,
  StatusUpdateIntervalSECONDS15,
  StatusUpdateIntervalSECONDS180,
  StatusUpdateIntervalSECONDS20,
  StatusUpdateIntervalSECONDS240,
  StatusUpdateIntervalSECONDS30,
  StatusUpdateIntervalSECONDS300,
  StatusUpdateIntervalSECONDS360,
  StatusUpdateIntervalSECONDS420,
  StatusUpdateIntervalSECONDS480,
  StatusUpdateIntervalSECONDS540,
  StatusUpdateIntervalSECONDS60,
  StatusUpdateIntervalSECONDS600,
  StatusUpdateInterval'
  #-}

instance Prelude.FromText StatusUpdateInterval where
  parser = StatusUpdateInterval' Prelude.<$> Prelude.takeText

instance Prelude.ToText StatusUpdateInterval where
  toText (StatusUpdateInterval' x) = x

instance Prelude.Hashable StatusUpdateInterval

instance Prelude.NFData StatusUpdateInterval

instance Prelude.ToByteString StatusUpdateInterval

instance Prelude.ToQuery StatusUpdateInterval

instance Prelude.ToHeader StatusUpdateInterval

instance Prelude.ToJSON StatusUpdateInterval where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON StatusUpdateInterval where
  parseJSON = Prelude.parseJSONText "StatusUpdateInterval"
