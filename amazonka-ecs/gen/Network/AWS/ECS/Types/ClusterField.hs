{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ECS.Types.ClusterField
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.ClusterField
  ( ClusterField
      ( ..,
        CFAttachments,
        CFSettings,
        CFStatistics,
        CFTags
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ClusterField = ClusterField' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern CFAttachments :: ClusterField
pattern CFAttachments = ClusterField' "ATTACHMENTS"

pattern CFSettings :: ClusterField
pattern CFSettings = ClusterField' "SETTINGS"

pattern CFStatistics :: ClusterField
pattern CFStatistics = ClusterField' "STATISTICS"

pattern CFTags :: ClusterField
pattern CFTags = ClusterField' "TAGS"

{-# COMPLETE
  CFAttachments,
  CFSettings,
  CFStatistics,
  CFTags,
  ClusterField'
  #-}

instance FromText ClusterField where
  parser = (ClusterField' . mk) <$> takeText

instance ToText ClusterField where
  toText (ClusterField' ci) = original ci

instance Hashable ClusterField

instance NFData ClusterField

instance ToByteString ClusterField

instance ToQuery ClusterField

instance ToHeader ClusterField

instance ToJSON ClusterField where
  toJSON = toJSONText
