{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppStream.Types.StorageConnectorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.StorageConnectorType
  ( StorageConnectorType
      ( ..,
        GoogleDrive,
        Homefolders,
        OneDrive
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

-- | The type of storage connector.
data StorageConnectorType
  = StorageConnectorType'
      ( CI
          Text
      )
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern GoogleDrive :: StorageConnectorType
pattern GoogleDrive = StorageConnectorType' "GOOGLE_DRIVE"

pattern Homefolders :: StorageConnectorType
pattern Homefolders = StorageConnectorType' "HOMEFOLDERS"

pattern OneDrive :: StorageConnectorType
pattern OneDrive = StorageConnectorType' "ONE_DRIVE"

{-# COMPLETE
  GoogleDrive,
  Homefolders,
  OneDrive,
  StorageConnectorType'
  #-}

instance FromText StorageConnectorType where
  parser = (StorageConnectorType' . mk) <$> takeText

instance ToText StorageConnectorType where
  toText (StorageConnectorType' ci) = original ci

instance Hashable StorageConnectorType

instance NFData StorageConnectorType

instance ToByteString StorageConnectorType

instance ToQuery StorageConnectorType

instance ToHeader StorageConnectorType

instance ToJSON StorageConnectorType where
  toJSON = toJSONText

instance FromJSON StorageConnectorType where
  parseJSON = parseJSONText "StorageConnectorType"
