{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkDocs.Types.StorageType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.StorageType
  ( StorageType
      ( ..,
        Quota,
        Unlimited
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data StorageType = StorageType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Quota :: StorageType
pattern Quota = StorageType' "QUOTA"

pattern Unlimited :: StorageType
pattern Unlimited = StorageType' "UNLIMITED"

{-# COMPLETE
  Quota,
  Unlimited,
  StorageType'
  #-}

instance FromText StorageType where
  parser = (StorageType' . mk) <$> takeText

instance ToText StorageType where
  toText (StorageType' ci) = original ci

instance Hashable StorageType

instance NFData StorageType

instance ToByteString StorageType

instance ToQuery StorageType

instance ToHeader StorageType

instance ToJSON StorageType where
  toJSON = toJSONText

instance FromJSON StorageType where
  parseJSON = parseJSONText "StorageType"
