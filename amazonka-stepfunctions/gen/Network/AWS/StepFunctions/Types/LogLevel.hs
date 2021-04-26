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
-- Module      : Network.AWS.StepFunctions.Types.LogLevel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StepFunctions.Types.LogLevel
  ( LogLevel
      ( ..,
        LogLevelALL,
        LogLevelERROR,
        LogLevelFATAL,
        LogLevelOFF
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LogLevel = LogLevel'
  { fromLogLevel ::
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

pattern LogLevelALL :: LogLevel
pattern LogLevelALL = LogLevel' "ALL"

pattern LogLevelERROR :: LogLevel
pattern LogLevelERROR = LogLevel' "ERROR"

pattern LogLevelFATAL :: LogLevel
pattern LogLevelFATAL = LogLevel' "FATAL"

pattern LogLevelOFF :: LogLevel
pattern LogLevelOFF = LogLevel' "OFF"

{-# COMPLETE
  LogLevelALL,
  LogLevelERROR,
  LogLevelFATAL,
  LogLevelOFF,
  LogLevel'
  #-}

instance Prelude.FromText LogLevel where
  parser = LogLevel' Prelude.<$> Prelude.takeText

instance Prelude.ToText LogLevel where
  toText (LogLevel' x) = x

instance Prelude.Hashable LogLevel

instance Prelude.NFData LogLevel

instance Prelude.ToByteString LogLevel

instance Prelude.ToQuery LogLevel

instance Prelude.ToHeader LogLevel

instance Prelude.ToJSON LogLevel where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON LogLevel where
  parseJSON = Prelude.parseJSONText "LogLevel"
