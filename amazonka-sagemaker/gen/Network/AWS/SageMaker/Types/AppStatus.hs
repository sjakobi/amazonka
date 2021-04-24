{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.AppStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.AppStatus
  ( AppStatus
      ( ..,
        ASsDeleted,
        ASsDeleting,
        ASsFailed,
        ASsInService,
        ASsPending
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AppStatus = AppStatus' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ASsDeleted :: AppStatus
pattern ASsDeleted = AppStatus' "Deleted"

pattern ASsDeleting :: AppStatus
pattern ASsDeleting = AppStatus' "Deleting"

pattern ASsFailed :: AppStatus
pattern ASsFailed = AppStatus' "Failed"

pattern ASsInService :: AppStatus
pattern ASsInService = AppStatus' "InService"

pattern ASsPending :: AppStatus
pattern ASsPending = AppStatus' "Pending"

{-# COMPLETE
  ASsDeleted,
  ASsDeleting,
  ASsFailed,
  ASsInService,
  ASsPending,
  AppStatus'
  #-}

instance FromText AppStatus where
  parser = (AppStatus' . mk) <$> takeText

instance ToText AppStatus where
  toText (AppStatus' ci) = original ci

instance Hashable AppStatus

instance NFData AppStatus

instance ToByteString AppStatus

instance ToQuery AppStatus

instance ToHeader AppStatus

instance FromJSON AppStatus where
  parseJSON = parseJSONText "AppStatus"
