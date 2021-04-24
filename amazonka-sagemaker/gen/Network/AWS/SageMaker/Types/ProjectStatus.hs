{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.ProjectStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.ProjectStatus
  ( ProjectStatus
      ( ..,
        PSCreateCompleted,
        PSCreateFailed,
        PSCreateInProgress,
        PSDeleteCompleted,
        PSDeleteFailed,
        PSDeleteInProgress,
        PSPending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ProjectStatus = ProjectStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern PSCreateCompleted :: ProjectStatus
pattern PSCreateCompleted = ProjectStatus' "CreateCompleted"

pattern PSCreateFailed :: ProjectStatus
pattern PSCreateFailed = ProjectStatus' "CreateFailed"

pattern PSCreateInProgress :: ProjectStatus
pattern PSCreateInProgress = ProjectStatus' "CreateInProgress"

pattern PSDeleteCompleted :: ProjectStatus
pattern PSDeleteCompleted = ProjectStatus' "DeleteCompleted"

pattern PSDeleteFailed :: ProjectStatus
pattern PSDeleteFailed = ProjectStatus' "DeleteFailed"

pattern PSDeleteInProgress :: ProjectStatus
pattern PSDeleteInProgress = ProjectStatus' "DeleteInProgress"

pattern PSPending :: ProjectStatus
pattern PSPending = ProjectStatus' "Pending"

{-# COMPLETE
  PSCreateCompleted,
  PSCreateFailed,
  PSCreateInProgress,
  PSDeleteCompleted,
  PSDeleteFailed,
  PSDeleteInProgress,
  PSPending,
  ProjectStatus'
  #-}

instance FromText ProjectStatus where
  parser = (ProjectStatus' . mk) <$> takeText

instance ToText ProjectStatus where
  toText (ProjectStatus' ci) = original ci

instance Hashable ProjectStatus

instance NFData ProjectStatus

instance ToByteString ProjectStatus

instance ToQuery ProjectStatus

instance ToHeader ProjectStatus

instance FromJSON ProjectStatus where
  parseJSON = parseJSONText "ProjectStatus"
