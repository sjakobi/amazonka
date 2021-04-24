{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SWF.Types.CancelTimerFailedCause
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SWF.Types.CancelTimerFailedCause
  ( CancelTimerFailedCause
      ( ..,
        CTFCOperationNotPermitted,
        CTFCTimerIdUnknown
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CancelTimerFailedCause
  = CancelTimerFailedCause'
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

pattern CTFCOperationNotPermitted :: CancelTimerFailedCause
pattern CTFCOperationNotPermitted = CancelTimerFailedCause' "OPERATION_NOT_PERMITTED"

pattern CTFCTimerIdUnknown :: CancelTimerFailedCause
pattern CTFCTimerIdUnknown = CancelTimerFailedCause' "TIMER_ID_UNKNOWN"

{-# COMPLETE
  CTFCOperationNotPermitted,
  CTFCTimerIdUnknown,
  CancelTimerFailedCause'
  #-}

instance FromText CancelTimerFailedCause where
  parser = (CancelTimerFailedCause' . mk) <$> takeText

instance ToText CancelTimerFailedCause where
  toText (CancelTimerFailedCause' ci) = original ci

instance Hashable CancelTimerFailedCause

instance NFData CancelTimerFailedCause

instance ToByteString CancelTimerFailedCause

instance ToQuery CancelTimerFailedCause

instance ToHeader CancelTimerFailedCause

instance FromJSON CancelTimerFailedCause where
  parseJSON = parseJSONText "CancelTimerFailedCause"
