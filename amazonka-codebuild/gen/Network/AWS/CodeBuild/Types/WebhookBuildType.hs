{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.WebhookBuildType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.WebhookBuildType
  ( WebhookBuildType
      ( ..,
        WBTBuild,
        WBTBuildBatch
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data WebhookBuildType = WebhookBuildType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern WBTBuild :: WebhookBuildType
pattern WBTBuild = WebhookBuildType' "BUILD"

pattern WBTBuildBatch :: WebhookBuildType
pattern WBTBuildBatch = WebhookBuildType' "BUILD_BATCH"

{-# COMPLETE
  WBTBuild,
  WBTBuildBatch,
  WebhookBuildType'
  #-}

instance FromText WebhookBuildType where
  parser = (WebhookBuildType' . mk) <$> takeText

instance ToText WebhookBuildType where
  toText (WebhookBuildType' ci) = original ci

instance Hashable WebhookBuildType

instance NFData WebhookBuildType

instance ToByteString WebhookBuildType

instance ToQuery WebhookBuildType

instance ToHeader WebhookBuildType

instance ToJSON WebhookBuildType where
  toJSON = toJSONText

instance FromJSON WebhookBuildType where
  parseJSON = parseJSONText "WebhookBuildType"
