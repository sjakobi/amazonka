{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.Types.RadiusStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.RadiusStatus
  ( RadiusStatus
      ( ..,
        Completed,
        Creating,
        Failed
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RadiusStatus = RadiusStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Completed :: RadiusStatus
pattern Completed = RadiusStatus' "Completed"

pattern Creating :: RadiusStatus
pattern Creating = RadiusStatus' "Creating"

pattern Failed :: RadiusStatus
pattern Failed = RadiusStatus' "Failed"

{-# COMPLETE
  Completed,
  Creating,
  Failed,
  RadiusStatus'
  #-}

instance FromText RadiusStatus where
  parser = (RadiusStatus' . mk) <$> takeText

instance ToText RadiusStatus where
  toText (RadiusStatus' ci) = original ci

instance Hashable RadiusStatus

instance NFData RadiusStatus

instance ToByteString RadiusStatus

instance ToQuery RadiusStatus

instance ToHeader RadiusStatus

instance FromJSON RadiusStatus where
  parseJSON = parseJSONText "RadiusStatus"
