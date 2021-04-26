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
-- Module      : Network.AWS.ECS.Types.LogDriver
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.LogDriver
  ( LogDriver
      ( ..,
        LogDriverAwsfirelens,
        LogDriverAwslogs,
        LogDriverFluentd,
        LogDriverGelf,
        LogDriverJournald,
        LogDriverJsonFile,
        LogDriverSplunk,
        LogDriverSyslog
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LogDriver = LogDriver'
  { fromLogDriver ::
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

pattern LogDriverAwsfirelens :: LogDriver
pattern LogDriverAwsfirelens = LogDriver' "awsfirelens"

pattern LogDriverAwslogs :: LogDriver
pattern LogDriverAwslogs = LogDriver' "awslogs"

pattern LogDriverFluentd :: LogDriver
pattern LogDriverFluentd = LogDriver' "fluentd"

pattern LogDriverGelf :: LogDriver
pattern LogDriverGelf = LogDriver' "gelf"

pattern LogDriverJournald :: LogDriver
pattern LogDriverJournald = LogDriver' "journald"

pattern LogDriverJsonFile :: LogDriver
pattern LogDriverJsonFile = LogDriver' "json-file"

pattern LogDriverSplunk :: LogDriver
pattern LogDriverSplunk = LogDriver' "splunk"

pattern LogDriverSyslog :: LogDriver
pattern LogDriverSyslog = LogDriver' "syslog"

{-# COMPLETE
  LogDriverAwsfirelens,
  LogDriverAwslogs,
  LogDriverFluentd,
  LogDriverGelf,
  LogDriverJournald,
  LogDriverJsonFile,
  LogDriverSplunk,
  LogDriverSyslog,
  LogDriver'
  #-}

instance Prelude.FromText LogDriver where
  parser = LogDriver' Prelude.<$> Prelude.takeText

instance Prelude.ToText LogDriver where
  toText (LogDriver' x) = x

instance Prelude.Hashable LogDriver

instance Prelude.NFData LogDriver

instance Prelude.ToByteString LogDriver

instance Prelude.ToQuery LogDriver

instance Prelude.ToHeader LogDriver

instance Prelude.ToJSON LogDriver where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON LogDriver where
  parseJSON = Prelude.parseJSONText "LogDriver"
