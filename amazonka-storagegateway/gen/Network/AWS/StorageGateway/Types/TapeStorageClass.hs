{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.StorageGateway.Types.TapeStorageClass
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.StorageGateway.Types.TapeStorageClass
  ( TapeStorageClass
      ( ..,
        DeepArchive,
        Glacier
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data TapeStorageClass = TapeStorageClass' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern DeepArchive :: TapeStorageClass
pattern DeepArchive = TapeStorageClass' "DEEP_ARCHIVE"

pattern Glacier :: TapeStorageClass
pattern Glacier = TapeStorageClass' "GLACIER"

{-# COMPLETE
  DeepArchive,
  Glacier,
  TapeStorageClass'
  #-}

instance FromText TapeStorageClass where
  parser = (TapeStorageClass' . mk) <$> takeText

instance ToText TapeStorageClass where
  toText (TapeStorageClass' ci) = original ci

instance Hashable TapeStorageClass

instance NFData TapeStorageClass

instance ToByteString TapeStorageClass

instance ToQuery TapeStorageClass

instance ToHeader TapeStorageClass

instance ToJSON TapeStorageClass where
  toJSON = toJSONText

instance FromJSON TapeStorageClass where
  parseJSON = parseJSONText "TapeStorageClass"
