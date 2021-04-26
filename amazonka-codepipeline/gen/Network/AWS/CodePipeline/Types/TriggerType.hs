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
-- Module      : Network.AWS.CodePipeline.Types.TriggerType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.TriggerType
  ( TriggerType
      ( ..,
        TriggerTypeCloudWatchEvent,
        TriggerTypeCreatePipeline,
        TriggerTypePollForSourceChanges,
        TriggerTypePutActionRevision,
        TriggerTypeStartPipelineExecution,
        TriggerTypeWebhook
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TriggerType = TriggerType'
  { fromTriggerType ::
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

pattern TriggerTypeCloudWatchEvent :: TriggerType
pattern TriggerTypeCloudWatchEvent = TriggerType' "CloudWatchEvent"

pattern TriggerTypeCreatePipeline :: TriggerType
pattern TriggerTypeCreatePipeline = TriggerType' "CreatePipeline"

pattern TriggerTypePollForSourceChanges :: TriggerType
pattern TriggerTypePollForSourceChanges = TriggerType' "PollForSourceChanges"

pattern TriggerTypePutActionRevision :: TriggerType
pattern TriggerTypePutActionRevision = TriggerType' "PutActionRevision"

pattern TriggerTypeStartPipelineExecution :: TriggerType
pattern TriggerTypeStartPipelineExecution = TriggerType' "StartPipelineExecution"

pattern TriggerTypeWebhook :: TriggerType
pattern TriggerTypeWebhook = TriggerType' "Webhook"

{-# COMPLETE
  TriggerTypeCloudWatchEvent,
  TriggerTypeCreatePipeline,
  TriggerTypePollForSourceChanges,
  TriggerTypePutActionRevision,
  TriggerTypeStartPipelineExecution,
  TriggerTypeWebhook,
  TriggerType'
  #-}

instance Prelude.FromText TriggerType where
  parser = TriggerType' Prelude.<$> Prelude.takeText

instance Prelude.ToText TriggerType where
  toText (TriggerType' x) = x

instance Prelude.Hashable TriggerType

instance Prelude.NFData TriggerType

instance Prelude.ToByteString TriggerType

instance Prelude.ToQuery TriggerType

instance Prelude.ToHeader TriggerType

instance Prelude.FromJSON TriggerType where
  parseJSON = Prelude.parseJSONText "TriggerType"
