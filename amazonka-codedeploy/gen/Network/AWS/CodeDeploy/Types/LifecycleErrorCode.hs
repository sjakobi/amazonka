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
-- Module      : Network.AWS.CodeDeploy.Types.LifecycleErrorCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeDeploy.Types.LifecycleErrorCode
  ( LifecycleErrorCode
      ( ..,
        LifecycleErrorCodeScriptFailed,
        LifecycleErrorCodeScriptMissing,
        LifecycleErrorCodeScriptNotExecutable,
        LifecycleErrorCodeScriptTimedOut,
        LifecycleErrorCodeSuccess,
        LifecycleErrorCodeUnknownError
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LifecycleErrorCode = LifecycleErrorCode'
  { fromLifecycleErrorCode ::
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

pattern LifecycleErrorCodeScriptFailed :: LifecycleErrorCode
pattern LifecycleErrorCodeScriptFailed = LifecycleErrorCode' "ScriptFailed"

pattern LifecycleErrorCodeScriptMissing :: LifecycleErrorCode
pattern LifecycleErrorCodeScriptMissing = LifecycleErrorCode' "ScriptMissing"

pattern LifecycleErrorCodeScriptNotExecutable :: LifecycleErrorCode
pattern LifecycleErrorCodeScriptNotExecutable = LifecycleErrorCode' "ScriptNotExecutable"

pattern LifecycleErrorCodeScriptTimedOut :: LifecycleErrorCode
pattern LifecycleErrorCodeScriptTimedOut = LifecycleErrorCode' "ScriptTimedOut"

pattern LifecycleErrorCodeSuccess :: LifecycleErrorCode
pattern LifecycleErrorCodeSuccess = LifecycleErrorCode' "Success"

pattern LifecycleErrorCodeUnknownError :: LifecycleErrorCode
pattern LifecycleErrorCodeUnknownError = LifecycleErrorCode' "UnknownError"

{-# COMPLETE
  LifecycleErrorCodeScriptFailed,
  LifecycleErrorCodeScriptMissing,
  LifecycleErrorCodeScriptNotExecutable,
  LifecycleErrorCodeScriptTimedOut,
  LifecycleErrorCodeSuccess,
  LifecycleErrorCodeUnknownError,
  LifecycleErrorCode'
  #-}

instance Prelude.FromText LifecycleErrorCode where
  parser = LifecycleErrorCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText LifecycleErrorCode where
  toText (LifecycleErrorCode' x) = x

instance Prelude.Hashable LifecycleErrorCode

instance Prelude.NFData LifecycleErrorCode

instance Prelude.ToByteString LifecycleErrorCode

instance Prelude.ToQuery LifecycleErrorCode

instance Prelude.ToHeader LifecycleErrorCode

instance Prelude.FromJSON LifecycleErrorCode where
  parseJSON = Prelude.parseJSONText "LifecycleErrorCode"
