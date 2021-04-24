{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.PipelineStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.PipelineStatus
  ( PipelineStatus
      ( ..,
        PSActive
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PipelineStatus = PipelineStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern PSActive :: PipelineStatus
pattern PSActive = PipelineStatus' "Active"

{-# COMPLETE
  PSActive,
  PipelineStatus'
  #-}

instance FromText PipelineStatus where
  parser = (PipelineStatus' . mk) <$> takeText

instance ToText PipelineStatus where
  toText (PipelineStatus' ci) = original ci

instance Hashable PipelineStatus

instance NFData PipelineStatus

instance ToByteString PipelineStatus

instance ToQuery PipelineStatus

instance ToHeader PipelineStatus

instance FromJSON PipelineStatus where
  parseJSON = parseJSONText "PipelineStatus"
