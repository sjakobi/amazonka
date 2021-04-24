{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SageMaker.Types.SortArtifactsBy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.SortArtifactsBy
  ( SortArtifactsBy
      ( ..,
        SCreationTime
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data SortArtifactsBy = SortArtifactsBy' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern SCreationTime :: SortArtifactsBy
pattern SCreationTime = SortArtifactsBy' "CreationTime"

{-# COMPLETE
  SCreationTime,
  SortArtifactsBy'
  #-}

instance FromText SortArtifactsBy where
  parser = (SortArtifactsBy' . mk) <$> takeText

instance ToText SortArtifactsBy where
  toText (SortArtifactsBy' ci) = original ci

instance Hashable SortArtifactsBy

instance NFData SortArtifactsBy

instance ToByteString SortArtifactsBy

instance ToQuery SortArtifactsBy

instance ToHeader SortArtifactsBy

instance ToJSON SortArtifactsBy where
  toJSON = toJSONText
