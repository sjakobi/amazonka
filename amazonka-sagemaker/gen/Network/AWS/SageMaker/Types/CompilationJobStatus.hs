{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.CompilationJobStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.CompilationJobStatus
  ( CompilationJobStatus
      ( ..,
        CJSCompleted,
        CJSFailed,
        CJSInprogress,
        CJSStarting,
        CJSStopped,
        CJSStopping
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data CompilationJobStatus
  = CompilationJobStatus'
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

pattern CJSCompleted :: CompilationJobStatus
pattern CJSCompleted = CompilationJobStatus' "COMPLETED"

pattern CJSFailed :: CompilationJobStatus
pattern CJSFailed = CompilationJobStatus' "FAILED"

pattern CJSInprogress :: CompilationJobStatus
pattern CJSInprogress = CompilationJobStatus' "INPROGRESS"

pattern CJSStarting :: CompilationJobStatus
pattern CJSStarting = CompilationJobStatus' "STARTING"

pattern CJSStopped :: CompilationJobStatus
pattern CJSStopped = CompilationJobStatus' "STOPPED"

pattern CJSStopping :: CompilationJobStatus
pattern CJSStopping = CompilationJobStatus' "STOPPING"

{-# COMPLETE
  CJSCompleted,
  CJSFailed,
  CJSInprogress,
  CJSStarting,
  CJSStopped,
  CJSStopping,
  CompilationJobStatus'
  #-}

instance FromText CompilationJobStatus where
  parser = (CompilationJobStatus' . mk) <$> takeText

instance ToText CompilationJobStatus where
  toText (CompilationJobStatus' ci) = original ci

instance Hashable CompilationJobStatus

instance NFData CompilationJobStatus

instance ToByteString CompilationJobStatus

instance ToQuery CompilationJobStatus

instance ToHeader CompilationJobStatus

instance ToJSON CompilationJobStatus where
  toJSON = toJSONText

instance FromJSON CompilationJobStatus where
  parseJSON = parseJSONText "CompilationJobStatus"
