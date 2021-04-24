{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.WebhookFilterType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.WebhookFilterType
  ( WebhookFilterType
      ( ..,
        ActorAccountId,
        BaseRef,
        CommitMessage,
        Event,
        FilePath,
        HeadRef
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data WebhookFilterType = WebhookFilterType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ActorAccountId :: WebhookFilterType
pattern ActorAccountId = WebhookFilterType' "ACTOR_ACCOUNT_ID"

pattern BaseRef :: WebhookFilterType
pattern BaseRef = WebhookFilterType' "BASE_REF"

pattern CommitMessage :: WebhookFilterType
pattern CommitMessage = WebhookFilterType' "COMMIT_MESSAGE"

pattern Event :: WebhookFilterType
pattern Event = WebhookFilterType' "EVENT"

pattern FilePath :: WebhookFilterType
pattern FilePath = WebhookFilterType' "FILE_PATH"

pattern HeadRef :: WebhookFilterType
pattern HeadRef = WebhookFilterType' "HEAD_REF"

{-# COMPLETE
  ActorAccountId,
  BaseRef,
  CommitMessage,
  Event,
  FilePath,
  HeadRef,
  WebhookFilterType'
  #-}

instance FromText WebhookFilterType where
  parser = (WebhookFilterType' . mk) <$> takeText

instance ToText WebhookFilterType where
  toText (WebhookFilterType' ci) = original ci

instance Hashable WebhookFilterType

instance NFData WebhookFilterType

instance ToByteString WebhookFilterType

instance ToQuery WebhookFilterType

instance ToHeader WebhookFilterType

instance ToJSON WebhookFilterType where
  toJSON = toJSONText

instance FromJSON WebhookFilterType where
  parseJSON = parseJSONText "WebhookFilterType"
