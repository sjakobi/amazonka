{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeDeploy.Types.LifecycleErrorCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.LifecycleErrorCode
  ( LifecycleErrorCode
      ( ..,
        ScriptFailed,
        ScriptMissing,
        ScriptNotExecutable,
        ScriptTimedOut,
        Success,
        UnknownError
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data LifecycleErrorCode
  = LifecycleErrorCode'
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

pattern ScriptFailed :: LifecycleErrorCode
pattern ScriptFailed = LifecycleErrorCode' "ScriptFailed"

pattern ScriptMissing :: LifecycleErrorCode
pattern ScriptMissing = LifecycleErrorCode' "ScriptMissing"

pattern ScriptNotExecutable :: LifecycleErrorCode
pattern ScriptNotExecutable = LifecycleErrorCode' "ScriptNotExecutable"

pattern ScriptTimedOut :: LifecycleErrorCode
pattern ScriptTimedOut = LifecycleErrorCode' "ScriptTimedOut"

pattern Success :: LifecycleErrorCode
pattern Success = LifecycleErrorCode' "Success"

pattern UnknownError :: LifecycleErrorCode
pattern UnknownError = LifecycleErrorCode' "UnknownError"

{-# COMPLETE
  ScriptFailed,
  ScriptMissing,
  ScriptNotExecutable,
  ScriptTimedOut,
  Success,
  UnknownError,
  LifecycleErrorCode'
  #-}

instance FromText LifecycleErrorCode where
  parser = (LifecycleErrorCode' . mk) <$> takeText

instance ToText LifecycleErrorCode where
  toText (LifecycleErrorCode' ci) = original ci

instance Hashable LifecycleErrorCode

instance NFData LifecycleErrorCode

instance ToByteString LifecycleErrorCode

instance ToQuery LifecycleErrorCode

instance ToHeader LifecycleErrorCode

instance FromJSON LifecycleErrorCode where
  parseJSON = parseJSONText "LifecycleErrorCode"
