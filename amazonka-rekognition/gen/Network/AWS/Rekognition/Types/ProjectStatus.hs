{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.Types.ProjectStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.ProjectStatus
  ( ProjectStatus
      ( ..,
        Created,
        Creating,
        Deleting
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

pattern Created :: ProjectStatus
pattern Created = ProjectStatus' "CREATED"

pattern Creating :: ProjectStatus
pattern Creating = ProjectStatus' "CREATING"

pattern Deleting :: ProjectStatus
pattern Deleting = ProjectStatus' "DELETING"

{-# COMPLETE
  Created,
  Creating,
  Deleting,
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
