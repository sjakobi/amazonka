{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkDocs.Types.RoleType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.RoleType
  ( RoleType
      ( ..,
        Contributor,
        Coowner,
        Owner,
        Viewer
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RoleType = RoleType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Contributor :: RoleType
pattern Contributor = RoleType' "CONTRIBUTOR"

pattern Coowner :: RoleType
pattern Coowner = RoleType' "COOWNER"

pattern Owner :: RoleType
pattern Owner = RoleType' "OWNER"

pattern Viewer :: RoleType
pattern Viewer = RoleType' "VIEWER"

{-# COMPLETE
  Contributor,
  Coowner,
  Owner,
  Viewer,
  RoleType'
  #-}

instance FromText RoleType where
  parser = (RoleType' . mk) <$> takeText

instance ToText RoleType where
  toText (RoleType' ci) = original ci

instance Hashable RoleType

instance NFData RoleType

instance ToByteString RoleType

instance ToQuery RoleType

instance ToHeader RoleType

instance ToJSON RoleType where
  toJSON = toJSONText

instance FromJSON RoleType where
  parseJSON = parseJSONText "RoleType"
