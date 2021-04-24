{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Connect.Types.ReferenceType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Connect.Types.ReferenceType
  ( ReferenceType
      ( ..,
        URL
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ReferenceType = ReferenceType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern URL :: ReferenceType
pattern URL = ReferenceType' "URL"

{-# COMPLETE
  URL,
  ReferenceType'
  #-}

instance FromText ReferenceType where
  parser = (ReferenceType' . mk) <$> takeText

instance ToText ReferenceType where
  toText (ReferenceType' ci) = original ci

instance Hashable ReferenceType

instance NFData ReferenceType

instance ToByteString ReferenceType

instance ToQuery ReferenceType

instance ToHeader ReferenceType

instance ToJSON ReferenceType where
  toJSON = toJSONText
