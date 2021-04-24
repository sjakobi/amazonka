{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.TriggerType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.TriggerType
  ( TriggerType
      ( ..,
        CloudWatchEvent,
        CreatePipeline,
        PollForSourceChanges,
        PutActionRevision,
        StartPipelineExecution,
        Webhook
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TriggerType = TriggerType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CloudWatchEvent :: TriggerType
pattern CloudWatchEvent = TriggerType' "CloudWatchEvent"

pattern CreatePipeline :: TriggerType
pattern CreatePipeline = TriggerType' "CreatePipeline"

pattern PollForSourceChanges :: TriggerType
pattern PollForSourceChanges = TriggerType' "PollForSourceChanges"

pattern PutActionRevision :: TriggerType
pattern PutActionRevision = TriggerType' "PutActionRevision"

pattern StartPipelineExecution :: TriggerType
pattern StartPipelineExecution = TriggerType' "StartPipelineExecution"

pattern Webhook :: TriggerType
pattern Webhook = TriggerType' "Webhook"

{-# COMPLETE
  CloudWatchEvent,
  CreatePipeline,
  PollForSourceChanges,
  PutActionRevision,
  StartPipelineExecution,
  Webhook,
  TriggerType'
  #-}

instance FromText TriggerType where
  parser = (TriggerType' . mk) <$> takeText

instance ToText TriggerType where
  toText (TriggerType' ci) = original ci

instance Hashable TriggerType

instance NFData TriggerType

instance ToByteString TriggerType

instance ToQuery TriggerType

instance ToHeader TriggerType

instance FromJSON TriggerType where
  parseJSON = parseJSONText "TriggerType"
