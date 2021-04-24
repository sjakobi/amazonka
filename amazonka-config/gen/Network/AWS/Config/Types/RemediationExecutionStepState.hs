{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Config.Types.RemediationExecutionStepState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.RemediationExecutionStepState
  ( RemediationExecutionStepState
      ( ..,
        RESSFailed,
        RESSPending,
        RESSSucceeded
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RemediationExecutionStepState
  = RemediationExecutionStepState'
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

pattern RESSFailed :: RemediationExecutionStepState
pattern RESSFailed = RemediationExecutionStepState' "FAILED"

pattern RESSPending :: RemediationExecutionStepState
pattern RESSPending = RemediationExecutionStepState' "PENDING"

pattern RESSSucceeded :: RemediationExecutionStepState
pattern RESSSucceeded = RemediationExecutionStepState' "SUCCEEDED"

{-# COMPLETE
  RESSFailed,
  RESSPending,
  RESSSucceeded,
  RemediationExecutionStepState'
  #-}

instance FromText RemediationExecutionStepState where
  parser = (RemediationExecutionStepState' . mk) <$> takeText

instance ToText RemediationExecutionStepState where
  toText (RemediationExecutionStepState' ci) = original ci

instance Hashable RemediationExecutionStepState

instance NFData RemediationExecutionStepState

instance ToByteString RemediationExecutionStepState

instance ToQuery RemediationExecutionStepState

instance ToHeader RemediationExecutionStepState

instance FromJSON RemediationExecutionStepState where
  parseJSON = parseJSONText "RemediationExecutionStepState"
