{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.Types.ConnectionOAuthHTTPMethod
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.ConnectionOAuthHTTPMethod
  ( ConnectionOAuthHTTPMethod
      ( ..,
        Get,
        Post,
        Put
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ConnectionOAuthHTTPMethod
  = ConnectionOAuthHTTPMethod'
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

pattern Get :: ConnectionOAuthHTTPMethod
pattern Get = ConnectionOAuthHTTPMethod' "GET"

pattern Post :: ConnectionOAuthHTTPMethod
pattern Post = ConnectionOAuthHTTPMethod' "POST"

pattern Put :: ConnectionOAuthHTTPMethod
pattern Put = ConnectionOAuthHTTPMethod' "PUT"

{-# COMPLETE
  Get,
  Post,
  Put,
  ConnectionOAuthHTTPMethod'
  #-}

instance FromText ConnectionOAuthHTTPMethod where
  parser = (ConnectionOAuthHTTPMethod' . mk) <$> takeText

instance ToText ConnectionOAuthHTTPMethod where
  toText (ConnectionOAuthHTTPMethod' ci) = original ci

instance Hashable ConnectionOAuthHTTPMethod

instance NFData ConnectionOAuthHTTPMethod

instance ToByteString ConnectionOAuthHTTPMethod

instance ToQuery ConnectionOAuthHTTPMethod

instance ToHeader ConnectionOAuthHTTPMethod

instance ToJSON ConnectionOAuthHTTPMethod where
  toJSON = toJSONText

instance FromJSON ConnectionOAuthHTTPMethod where
  parseJSON = parseJSONText "ConnectionOAuthHTTPMethod"
