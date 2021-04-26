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
-- Module      : Network.AWS.Greengrass.Types.LoggerLevel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Greengrass.Types.LoggerLevel
  ( LoggerLevel
      ( ..,
        LoggerLevelDEBUG,
        LoggerLevelERROR,
        LoggerLevelFATAL,
        LoggerLevelINFO,
        LoggerLevelWARN
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LoggerLevel = LoggerLevel'
  { fromLoggerLevel ::
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

pattern LoggerLevelDEBUG :: LoggerLevel
pattern LoggerLevelDEBUG = LoggerLevel' "DEBUG"

pattern LoggerLevelERROR :: LoggerLevel
pattern LoggerLevelERROR = LoggerLevel' "ERROR"

pattern LoggerLevelFATAL :: LoggerLevel
pattern LoggerLevelFATAL = LoggerLevel' "FATAL"

pattern LoggerLevelINFO :: LoggerLevel
pattern LoggerLevelINFO = LoggerLevel' "INFO"

pattern LoggerLevelWARN :: LoggerLevel
pattern LoggerLevelWARN = LoggerLevel' "WARN"

{-# COMPLETE
  LoggerLevelDEBUG,
  LoggerLevelERROR,
  LoggerLevelFATAL,
  LoggerLevelINFO,
  LoggerLevelWARN,
  LoggerLevel'
  #-}

instance Prelude.FromText LoggerLevel where
  parser = LoggerLevel' Prelude.<$> Prelude.takeText

instance Prelude.ToText LoggerLevel where
  toText (LoggerLevel' x) = x

instance Prelude.Hashable LoggerLevel

instance Prelude.NFData LoggerLevel

instance Prelude.ToByteString LoggerLevel

instance Prelude.ToQuery LoggerLevel

instance Prelude.ToHeader LoggerLevel

instance Prelude.ToJSON LoggerLevel where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON LoggerLevel where
  parseJSON = Prelude.parseJSONText "LoggerLevel"
