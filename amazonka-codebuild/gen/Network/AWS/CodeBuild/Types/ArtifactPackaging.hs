{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CodeBuild.Types.ArtifactPackaging
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.ArtifactPackaging
  ( ArtifactPackaging
      ( ..,
        APNone,
        APZip
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ArtifactPackaging = ArtifactPackaging' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern APNone :: ArtifactPackaging
pattern APNone = ArtifactPackaging' "NONE"

pattern APZip :: ArtifactPackaging
pattern APZip = ArtifactPackaging' "ZIP"

{-# COMPLETE
  APNone,
  APZip,
  ArtifactPackaging'
  #-}

instance FromText ArtifactPackaging where
  parser = (ArtifactPackaging' . mk) <$> takeText

instance ToText ArtifactPackaging where
  toText (ArtifactPackaging' ci) = original ci

instance Hashable ArtifactPackaging

instance NFData ArtifactPackaging

instance ToByteString ArtifactPackaging

instance ToQuery ArtifactPackaging

instance ToHeader ArtifactPackaging

instance ToJSON ArtifactPackaging where
  toJSON = toJSONText

instance FromJSON ArtifactPackaging where
  parseJSON = parseJSONText "ArtifactPackaging"
