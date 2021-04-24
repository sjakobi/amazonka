{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Inspector.Types.PreviewStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Inspector.Types.PreviewStatus
  ( PreviewStatus
      ( ..,
        PSCompleted,
        PSWorkInProgress
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PreviewStatus = PreviewStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern PSCompleted :: PreviewStatus
pattern PSCompleted = PreviewStatus' "COMPLETED"

pattern PSWorkInProgress :: PreviewStatus
pattern PSWorkInProgress = PreviewStatus' "WORK_IN_PROGRESS"

{-# COMPLETE
  PSCompleted,
  PSWorkInProgress,
  PreviewStatus'
  #-}

instance FromText PreviewStatus where
  parser = (PreviewStatus' . mk) <$> takeText

instance ToText PreviewStatus where
  toText (PreviewStatus' ci) = original ci

instance Hashable PreviewStatus

instance NFData PreviewStatus

instance ToByteString PreviewStatus

instance ToQuery PreviewStatus

instance ToHeader PreviewStatus

instance FromJSON PreviewStatus where
  parseJSON = parseJSONText "PreviewStatus"
