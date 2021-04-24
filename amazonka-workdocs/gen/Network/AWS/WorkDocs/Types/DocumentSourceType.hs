{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WorkDocs.Types.DocumentSourceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WorkDocs.Types.DocumentSourceType
  ( DocumentSourceType
      ( ..,
        Original,
        WithComments
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DocumentSourceType
  = DocumentSourceType'
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

pattern Original :: DocumentSourceType
pattern Original = DocumentSourceType' "ORIGINAL"

pattern WithComments :: DocumentSourceType
pattern WithComments = DocumentSourceType' "WITH_COMMENTS"

{-# COMPLETE
  Original,
  WithComments,
  DocumentSourceType'
  #-}

instance FromText DocumentSourceType where
  parser = (DocumentSourceType' . mk) <$> takeText

instance ToText DocumentSourceType where
  toText (DocumentSourceType' ci) = original ci

instance Hashable DocumentSourceType

instance NFData DocumentSourceType

instance ToByteString DocumentSourceType

instance ToQuery DocumentSourceType

instance ToHeader DocumentSourceType

instance FromJSON DocumentSourceType where
  parseJSON = parseJSONText "DocumentSourceType"
