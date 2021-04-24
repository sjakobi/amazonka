{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.StartTimerFailedCause
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.StartTimerFailedCause
  ( StartTimerFailedCause
      ( ..,
        STFCOpenTimersLimitExceeded,
        STFCOperationNotPermitted,
        STFCTimerCreationRateExceeded,
        STFCTimerIdAlreadyInUse
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StartTimerFailedCause
  = StartTimerFailedCause'
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

pattern STFCOpenTimersLimitExceeded :: StartTimerFailedCause
pattern STFCOpenTimersLimitExceeded = StartTimerFailedCause' "OPEN_TIMERS_LIMIT_EXCEEDED"

pattern STFCOperationNotPermitted :: StartTimerFailedCause
pattern STFCOperationNotPermitted = StartTimerFailedCause' "OPERATION_NOT_PERMITTED"

pattern STFCTimerCreationRateExceeded :: StartTimerFailedCause
pattern STFCTimerCreationRateExceeded = StartTimerFailedCause' "TIMER_CREATION_RATE_EXCEEDED"

pattern STFCTimerIdAlreadyInUse :: StartTimerFailedCause
pattern STFCTimerIdAlreadyInUse = StartTimerFailedCause' "TIMER_ID_ALREADY_IN_USE"

{-# COMPLETE
  STFCOpenTimersLimitExceeded,
  STFCOperationNotPermitted,
  STFCTimerCreationRateExceeded,
  STFCTimerIdAlreadyInUse,
  StartTimerFailedCause'
  #-}

instance FromText StartTimerFailedCause where
  parser = (StartTimerFailedCause' . mk) <$> takeText

instance ToText StartTimerFailedCause where
  toText (StartTimerFailedCause' ci) = original ci

instance Hashable StartTimerFailedCause

instance NFData StartTimerFailedCause

instance ToByteString StartTimerFailedCause

instance ToQuery StartTimerFailedCause

instance ToHeader StartTimerFailedCause

instance FromJSON StartTimerFailedCause where
  parseJSON = parseJSONText "StartTimerFailedCause"
