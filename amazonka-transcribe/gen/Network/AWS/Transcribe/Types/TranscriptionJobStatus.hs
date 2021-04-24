{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Transcribe.Types.TranscriptionJobStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Transcribe.Types.TranscriptionJobStatus
  ( TranscriptionJobStatus
      ( ..,
        TJSCompleted,
        TJSFailed,
        TJSInProgress,
        TJSQueued
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TranscriptionJobStatus
  = TranscriptionJobStatus'
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

pattern TJSCompleted :: TranscriptionJobStatus
pattern TJSCompleted = TranscriptionJobStatus' "COMPLETED"

pattern TJSFailed :: TranscriptionJobStatus
pattern TJSFailed = TranscriptionJobStatus' "FAILED"

pattern TJSInProgress :: TranscriptionJobStatus
pattern TJSInProgress = TranscriptionJobStatus' "IN_PROGRESS"

pattern TJSQueued :: TranscriptionJobStatus
pattern TJSQueued = TranscriptionJobStatus' "QUEUED"

{-# COMPLETE
  TJSCompleted,
  TJSFailed,
  TJSInProgress,
  TJSQueued,
  TranscriptionJobStatus'
  #-}

instance FromText TranscriptionJobStatus where
  parser = (TranscriptionJobStatus' . mk) <$> takeText

instance ToText TranscriptionJobStatus where
  toText (TranscriptionJobStatus' ci) = original ci

instance Hashable TranscriptionJobStatus

instance NFData TranscriptionJobStatus

instance ToByteString TranscriptionJobStatus

instance ToQuery TranscriptionJobStatus

instance ToHeader TranscriptionJobStatus

instance ToJSON TranscriptionJobStatus where
  toJSON = toJSONText

instance FromJSON TranscriptionJobStatus where
  parseJSON = parseJSONText "TranscriptionJobStatus"
