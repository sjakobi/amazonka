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
-- Module      : Network.AWS.DeviceFarm.Types.ExecutionResult
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DeviceFarm.Types.ExecutionResult
  ( ExecutionResult
      ( ..,
        ExecutionResultERRORED,
        ExecutionResultFAILED,
        ExecutionResultPASSED,
        ExecutionResultPENDING,
        ExecutionResultSKIPPED,
        ExecutionResultSTOPPED,
        ExecutionResultWARNED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ExecutionResult = ExecutionResult'
  { fromExecutionResult ::
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

pattern ExecutionResultERRORED :: ExecutionResult
pattern ExecutionResultERRORED = ExecutionResult' "ERRORED"

pattern ExecutionResultFAILED :: ExecutionResult
pattern ExecutionResultFAILED = ExecutionResult' "FAILED"

pattern ExecutionResultPASSED :: ExecutionResult
pattern ExecutionResultPASSED = ExecutionResult' "PASSED"

pattern ExecutionResultPENDING :: ExecutionResult
pattern ExecutionResultPENDING = ExecutionResult' "PENDING"

pattern ExecutionResultSKIPPED :: ExecutionResult
pattern ExecutionResultSKIPPED = ExecutionResult' "SKIPPED"

pattern ExecutionResultSTOPPED :: ExecutionResult
pattern ExecutionResultSTOPPED = ExecutionResult' "STOPPED"

pattern ExecutionResultWARNED :: ExecutionResult
pattern ExecutionResultWARNED = ExecutionResult' "WARNED"

{-# COMPLETE
  ExecutionResultERRORED,
  ExecutionResultFAILED,
  ExecutionResultPASSED,
  ExecutionResultPENDING,
  ExecutionResultSKIPPED,
  ExecutionResultSTOPPED,
  ExecutionResultWARNED,
  ExecutionResult'
  #-}

instance Prelude.FromText ExecutionResult where
  parser = ExecutionResult' Prelude.<$> Prelude.takeText

instance Prelude.ToText ExecutionResult where
  toText (ExecutionResult' x) = x

instance Prelude.Hashable ExecutionResult

instance Prelude.NFData ExecutionResult

instance Prelude.ToByteString ExecutionResult

instance Prelude.ToQuery ExecutionResult

instance Prelude.ToHeader ExecutionResult

instance Prelude.FromJSON ExecutionResult where
  parseJSON = Prelude.parseJSONText "ExecutionResult"
