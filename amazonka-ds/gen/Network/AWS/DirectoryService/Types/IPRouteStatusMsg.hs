{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DirectoryService.Types.IPRouteStatusMsg
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DirectoryService.Types.IPRouteStatusMsg
  ( IPRouteStatusMsg
      ( ..,
        AddFailed,
        Added,
        Adding,
        RemoveFailed,
        Removed,
        Removing
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data IPRouteStatusMsg = IPRouteStatusMsg' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AddFailed :: IPRouteStatusMsg
pattern AddFailed = IPRouteStatusMsg' "AddFailed"

pattern Added :: IPRouteStatusMsg
pattern Added = IPRouteStatusMsg' "Added"

pattern Adding :: IPRouteStatusMsg
pattern Adding = IPRouteStatusMsg' "Adding"

pattern RemoveFailed :: IPRouteStatusMsg
pattern RemoveFailed = IPRouteStatusMsg' "RemoveFailed"

pattern Removed :: IPRouteStatusMsg
pattern Removed = IPRouteStatusMsg' "Removed"

pattern Removing :: IPRouteStatusMsg
pattern Removing = IPRouteStatusMsg' "Removing"

{-# COMPLETE
  AddFailed,
  Added,
  Adding,
  RemoveFailed,
  Removed,
  Removing,
  IPRouteStatusMsg'
  #-}

instance FromText IPRouteStatusMsg where
  parser = (IPRouteStatusMsg' . mk) <$> takeText

instance ToText IPRouteStatusMsg where
  toText (IPRouteStatusMsg' ci) = original ci

instance Hashable IPRouteStatusMsg

instance NFData IPRouteStatusMsg

instance ToByteString IPRouteStatusMsg

instance ToQuery IPRouteStatusMsg

instance ToHeader IPRouteStatusMsg

instance FromJSON IPRouteStatusMsg where
  parseJSON = parseJSONText "IPRouteStatusMsg"
