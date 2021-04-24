{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Rekognition.Types.ContentClassifier
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Rekognition.Types.ContentClassifier
  ( ContentClassifier
      ( ..,
        FreeOfAdultContent,
        FreeOfPersonallyIdentifiableInformation
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ContentClassifier = ContentClassifier' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern FreeOfAdultContent :: ContentClassifier
pattern FreeOfAdultContent = ContentClassifier' "FreeOfAdultContent"

pattern FreeOfPersonallyIdentifiableInformation :: ContentClassifier
pattern FreeOfPersonallyIdentifiableInformation = ContentClassifier' "FreeOfPersonallyIdentifiableInformation"

{-# COMPLETE
  FreeOfAdultContent,
  FreeOfPersonallyIdentifiableInformation,
  ContentClassifier'
  #-}

instance FromText ContentClassifier where
  parser = (ContentClassifier' . mk) <$> takeText

instance ToText ContentClassifier where
  toText (ContentClassifier' ci) = original ci

instance Hashable ContentClassifier

instance NFData ContentClassifier

instance ToByteString ContentClassifier

instance ToQuery ContentClassifier

instance ToHeader ContentClassifier

instance ToJSON ContentClassifier where
  toJSON = toJSONText
