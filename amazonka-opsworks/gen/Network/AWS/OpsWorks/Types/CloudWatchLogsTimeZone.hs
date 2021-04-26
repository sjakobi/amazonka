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
-- Module      : Network.AWS.OpsWorks.Types.CloudWatchLogsTimeZone
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.OpsWorks.Types.CloudWatchLogsTimeZone
  ( CloudWatchLogsTimeZone
      ( ..,
        CloudWatchLogsTimeZoneLOCAL,
        CloudWatchLogsTimeZoneUTC
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The preferred time zone for logs streamed to CloudWatch Logs. Valid
-- values are @LOCAL@ and @UTC@, for Coordinated Universal Time.
newtype CloudWatchLogsTimeZone = CloudWatchLogsTimeZone'
  { fromCloudWatchLogsTimeZone ::
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

pattern CloudWatchLogsTimeZoneLOCAL :: CloudWatchLogsTimeZone
pattern CloudWatchLogsTimeZoneLOCAL = CloudWatchLogsTimeZone' "LOCAL"

pattern CloudWatchLogsTimeZoneUTC :: CloudWatchLogsTimeZone
pattern CloudWatchLogsTimeZoneUTC = CloudWatchLogsTimeZone' "UTC"

{-# COMPLETE
  CloudWatchLogsTimeZoneLOCAL,
  CloudWatchLogsTimeZoneUTC,
  CloudWatchLogsTimeZone'
  #-}

instance Prelude.FromText CloudWatchLogsTimeZone where
  parser = CloudWatchLogsTimeZone' Prelude.<$> Prelude.takeText

instance Prelude.ToText CloudWatchLogsTimeZone where
  toText (CloudWatchLogsTimeZone' x) = x

instance Prelude.Hashable CloudWatchLogsTimeZone

instance Prelude.NFData CloudWatchLogsTimeZone

instance Prelude.ToByteString CloudWatchLogsTimeZone

instance Prelude.ToQuery CloudWatchLogsTimeZone

instance Prelude.ToHeader CloudWatchLogsTimeZone

instance Prelude.ToJSON CloudWatchLogsTimeZone where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON CloudWatchLogsTimeZone where
  parseJSON = Prelude.parseJSONText "CloudWatchLogsTimeZone"
