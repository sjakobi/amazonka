{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodePipeline.Types.ArtifactStoreType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.ArtifactStoreType
  ( ArtifactStoreType
      ( ..,
        ASTS3
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ArtifactStoreType = ArtifactStoreType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern ASTS3 :: ArtifactStoreType
pattern ASTS3 = ArtifactStoreType' "S3"

{-# COMPLETE
  ASTS3,
  ArtifactStoreType'
  #-}

instance FromText ArtifactStoreType where
  parser = (ArtifactStoreType' . mk) <$> takeText

instance ToText ArtifactStoreType where
  toText (ArtifactStoreType' ci) = original ci

instance Hashable ArtifactStoreType

instance NFData ArtifactStoreType

instance ToByteString ArtifactStoreType

instance ToQuery ArtifactStoreType

instance ToHeader ArtifactStoreType

instance ToJSON ArtifactStoreType where
  toJSON = toJSONText

instance FromJSON ArtifactStoreType where
  parseJSON = parseJSONText "ArtifactStoreType"
