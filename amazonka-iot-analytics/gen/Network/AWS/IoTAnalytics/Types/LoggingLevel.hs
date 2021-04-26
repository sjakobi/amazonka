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
-- Module      : Network.AWS.IoTAnalytics.Types.LoggingLevel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoTAnalytics.Types.LoggingLevel
  ( LoggingLevel
      ( ..,
        LoggingLevelERROR
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LoggingLevel = LoggingLevel'
  { fromLoggingLevel ::
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

pattern LoggingLevelERROR :: LoggingLevel
pattern LoggingLevelERROR = LoggingLevel' "ERROR"

{-# COMPLETE
  LoggingLevelERROR,
  LoggingLevel'
  #-}

instance Prelude.FromText LoggingLevel where
  parser = LoggingLevel' Prelude.<$> Prelude.takeText

instance Prelude.ToText LoggingLevel where
  toText (LoggingLevel' x) = x

instance Prelude.Hashable LoggingLevel

instance Prelude.NFData LoggingLevel

instance Prelude.ToByteString LoggingLevel

instance Prelude.ToQuery LoggingLevel

instance Prelude.ToHeader LoggingLevel

instance Prelude.ToJSON LoggingLevel where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON LoggingLevel where
  parseJSON = Prelude.parseJSONText "LoggingLevel"
