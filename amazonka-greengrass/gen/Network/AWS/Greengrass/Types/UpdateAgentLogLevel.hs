{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
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
        UALLDebug,
        UALLError',
        UALLFatal,
        UALLInfo,
        UALLNone,
        UALLTrace,
        UALLVerbose,
        UALLWarn
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The minimum level of log statements that should be logged by the OTA Agent during an update.
data UpdateAgentLogLevel
  = UpdateAgentLogLevel'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern UALLDebug :: UpdateAgentLogLevel
pattern UALLDebug = UpdateAgentLogLevel' "DEBUG"

pattern UALLError' :: UpdateAgentLogLevel
pattern UALLError' = UpdateAgentLogLevel' "ERROR"

pattern UALLFatal :: UpdateAgentLogLevel
pattern UALLFatal = UpdateAgentLogLevel' "FATAL"

pattern UALLInfo :: UpdateAgentLogLevel
pattern UALLInfo = UpdateAgentLogLevel' "INFO"

pattern UALLNone :: UpdateAgentLogLevel
pattern UALLNone = UpdateAgentLogLevel' "NONE"

pattern UALLTrace :: UpdateAgentLogLevel
pattern UALLTrace = UpdateAgentLogLevel' "TRACE"

pattern UALLVerbose :: UpdateAgentLogLevel
pattern UALLVerbose = UpdateAgentLogLevel' "VERBOSE"

pattern UALLWarn :: UpdateAgentLogLevel
pattern UALLWarn = UpdateAgentLogLevel' "WARN"

{-# COMPLETE
  UALLDebug,
  UALLError',
  UALLFatal,
  UALLInfo,
  UALLNone,
  UALLTrace,
  UALLVerbose,
  UALLWarn,
  UpdateAgentLogLevel'
  #-}

instance FromText UpdateAgentLogLevel where
  parser = (UpdateAgentLogLevel' . mk) <$> takeText

instance ToText UpdateAgentLogLevel where
  toText (UpdateAgentLogLevel' ci) = original ci

instance Hashable UpdateAgentLogLevel

instance NFData UpdateAgentLogLevel

instance ToByteString UpdateAgentLogLevel

instance ToQuery UpdateAgentLogLevel

instance ToHeader UpdateAgentLogLevel

instance ToJSON UpdateAgentLogLevel where
  toJSON = toJSONText
