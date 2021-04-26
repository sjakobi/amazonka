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
-- Module      : Network.AWS.Greengrass.Types.UpdateAgentLogLevel
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Greengrass.Types.UpdateAgentLogLevel
  ( UpdateAgentLogLevel
      ( ..,
        UpdateAgentLogLevelDEBUG,
        UpdateAgentLogLevelERROR,
        UpdateAgentLogLevelFATAL,
        UpdateAgentLogLevelINFO,
        UpdateAgentLogLevelNONE,
        UpdateAgentLogLevelTRACE,
        UpdateAgentLogLevelVERBOSE,
        UpdateAgentLogLevelWARN
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The minimum level of log statements that should be logged by the OTA
-- Agent during an update.
newtype UpdateAgentLogLevel = UpdateAgentLogLevel'
  { fromUpdateAgentLogLevel ::
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

pattern UpdateAgentLogLevelDEBUG :: UpdateAgentLogLevel
pattern UpdateAgentLogLevelDEBUG = UpdateAgentLogLevel' "DEBUG"

pattern UpdateAgentLogLevelERROR :: UpdateAgentLogLevel
pattern UpdateAgentLogLevelERROR = UpdateAgentLogLevel' "ERROR"

pattern UpdateAgentLogLevelFATAL :: UpdateAgentLogLevel
pattern UpdateAgentLogLevelFATAL = UpdateAgentLogLevel' "FATAL"

pattern UpdateAgentLogLevelINFO :: UpdateAgentLogLevel
pattern UpdateAgentLogLevelINFO = UpdateAgentLogLevel' "INFO"

pattern UpdateAgentLogLevelNONE :: UpdateAgentLogLevel
pattern UpdateAgentLogLevelNONE = UpdateAgentLogLevel' "NONE"

pattern UpdateAgentLogLevelTRACE :: UpdateAgentLogLevel
pattern UpdateAgentLogLevelTRACE = UpdateAgentLogLevel' "TRACE"

pattern UpdateAgentLogLevelVERBOSE :: UpdateAgentLogLevel
pattern UpdateAgentLogLevelVERBOSE = UpdateAgentLogLevel' "VERBOSE"

pattern UpdateAgentLogLevelWARN :: UpdateAgentLogLevel
pattern UpdateAgentLogLevelWARN = UpdateAgentLogLevel' "WARN"

{-# COMPLETE
  UpdateAgentLogLevelDEBUG,
  UpdateAgentLogLevelERROR,
  UpdateAgentLogLevelFATAL,
  UpdateAgentLogLevelINFO,
  UpdateAgentLogLevelNONE,
  UpdateAgentLogLevelTRACE,
  UpdateAgentLogLevelVERBOSE,
  UpdateAgentLogLevelWARN,
  UpdateAgentLogLevel'
  #-}

instance Prelude.FromText UpdateAgentLogLevel where
  parser = UpdateAgentLogLevel' Prelude.<$> Prelude.takeText

instance Prelude.ToText UpdateAgentLogLevel where
  toText (UpdateAgentLogLevel' x) = x

instance Prelude.Hashable UpdateAgentLogLevel

instance Prelude.NFData UpdateAgentLogLevel

instance Prelude.ToByteString UpdateAgentLogLevel

instance Prelude.ToQuery UpdateAgentLogLevel

instance Prelude.ToHeader UpdateAgentLogLevel

instance Prelude.ToJSON UpdateAgentLogLevel where
  toJSON = Prelude.toJSONText
