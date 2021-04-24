{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.WAF.Types.MatchFieldType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.WAF.Types.MatchFieldType
  ( MatchFieldType
      ( ..,
        AllQueryArgs,
        Body,
        Header,
        Method,
        QueryString,
        SingleQueryArg,
        URI
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data MatchFieldType = MatchFieldType' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern AllQueryArgs :: MatchFieldType
pattern AllQueryArgs = MatchFieldType' "ALL_QUERY_ARGS"

pattern Body :: MatchFieldType
pattern Body = MatchFieldType' "BODY"

pattern Header :: MatchFieldType
pattern Header = MatchFieldType' "HEADER"

pattern Method :: MatchFieldType
pattern Method = MatchFieldType' "METHOD"

pattern QueryString :: MatchFieldType
pattern QueryString = MatchFieldType' "QUERY_STRING"

pattern SingleQueryArg :: MatchFieldType
pattern SingleQueryArg = MatchFieldType' "SINGLE_QUERY_ARG"

pattern URI :: MatchFieldType
pattern URI = MatchFieldType' "URI"

{-# COMPLETE
  AllQueryArgs,
  Body,
  Header,
  Method,
  QueryString,
  SingleQueryArg,
  URI,
  MatchFieldType'
  #-}

instance FromText MatchFieldType where
  parser = (MatchFieldType' . mk) <$> takeText

instance ToText MatchFieldType where
  toText (MatchFieldType' ci) = original ci

instance Hashable MatchFieldType

instance NFData MatchFieldType

instance ToByteString MatchFieldType

instance ToQuery MatchFieldType

instance ToHeader MatchFieldType

instance ToJSON MatchFieldType where
  toJSON = toJSONText

instance FromJSON MatchFieldType where
  parseJSON = parseJSONText "MatchFieldType"
