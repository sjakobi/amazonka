{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.EdgePackagingJobStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.EdgePackagingJobStatus
  ( EdgePackagingJobStatus
      ( ..,
        EPJSCompleted,
        EPJSFailed,
        EPJSInprogress,
        EPJSStarting,
        EPJSStopped,
        EPJSStopping
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data EdgePackagingJobStatus
  = EdgePackagingJobStatus'
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

pattern EPJSCompleted :: EdgePackagingJobStatus
pattern EPJSCompleted = EdgePackagingJobStatus' "COMPLETED"

pattern EPJSFailed :: EdgePackagingJobStatus
pattern EPJSFailed = EdgePackagingJobStatus' "FAILED"

pattern EPJSInprogress :: EdgePackagingJobStatus
pattern EPJSInprogress = EdgePackagingJobStatus' "INPROGRESS"

pattern EPJSStarting :: EdgePackagingJobStatus
pattern EPJSStarting = EdgePackagingJobStatus' "STARTING"

pattern EPJSStopped :: EdgePackagingJobStatus
pattern EPJSStopped = EdgePackagingJobStatus' "STOPPED"

pattern EPJSStopping :: EdgePackagingJobStatus
pattern EPJSStopping = EdgePackagingJobStatus' "STOPPING"

{-# COMPLETE
  EPJSCompleted,
  EPJSFailed,
  EPJSInprogress,
  EPJSStarting,
  EPJSStopped,
  EPJSStopping,
  EdgePackagingJobStatus'
  #-}

instance FromText EdgePackagingJobStatus where
  parser = (EdgePackagingJobStatus' . mk) <$> takeText

instance ToText EdgePackagingJobStatus where
  toText (EdgePackagingJobStatus' ci) = original ci

instance Hashable EdgePackagingJobStatus

instance NFData EdgePackagingJobStatus

instance ToByteString EdgePackagingJobStatus

instance ToQuery EdgePackagingJobStatus

instance ToHeader EdgePackagingJobStatus

instance ToJSON EdgePackagingJobStatus where
  toJSON = toJSONText

instance FromJSON EdgePackagingJobStatus where
  parseJSON = parseJSONText "EdgePackagingJobStatus"
