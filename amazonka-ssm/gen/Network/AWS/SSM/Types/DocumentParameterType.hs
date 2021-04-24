{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.SSM.Types.DocumentParameterType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SSM.Types.DocumentParameterType
  ( DocumentParameterType
      ( ..,
        String,
        StringList
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data DocumentParameterType
  = DocumentParameterType'
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

pattern String :: DocumentParameterType
pattern String = DocumentParameterType' "String"

pattern StringList :: DocumentParameterType
pattern StringList = DocumentParameterType' "StringList"

{-# COMPLETE
  String,
  StringList,
  DocumentParameterType'
  #-}

instance FromText DocumentParameterType where
  parser = (DocumentParameterType' . mk) <$> takeText

instance ToText DocumentParameterType where
  toText (DocumentParameterType' ci) = original ci

instance Hashable DocumentParameterType

instance NFData DocumentParameterType

instance ToByteString DocumentParameterType

instance ToQuery DocumentParameterType

instance ToHeader DocumentParameterType

instance FromJSON DocumentParameterType where
  parseJSON = parseJSONText "DocumentParameterType"
