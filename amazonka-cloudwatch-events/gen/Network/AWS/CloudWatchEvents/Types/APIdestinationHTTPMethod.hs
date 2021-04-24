{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudWatchEvents.Types.APIdestinationHTTPMethod
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudWatchEvents.Types.APIdestinationHTTPMethod
  ( APIdestinationHTTPMethod
      ( ..,
        AHTTPMDelete,
        AHTTPMGet,
        AHTTPMHead,
        AHTTPMOptions,
        AHTTPMPatch,
        AHTTPMPost,
        AHTTPMPut
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data APIdestinationHTTPMethod
  = APIdestinationHTTPMethod'
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

pattern AHTTPMDelete :: APIdestinationHTTPMethod
pattern AHTTPMDelete = APIdestinationHTTPMethod' "DELETE"

pattern AHTTPMGet :: APIdestinationHTTPMethod
pattern AHTTPMGet = APIdestinationHTTPMethod' "GET"

pattern AHTTPMHead :: APIdestinationHTTPMethod
pattern AHTTPMHead = APIdestinationHTTPMethod' "HEAD"

pattern AHTTPMOptions :: APIdestinationHTTPMethod
pattern AHTTPMOptions = APIdestinationHTTPMethod' "OPTIONS"

pattern AHTTPMPatch :: APIdestinationHTTPMethod
pattern AHTTPMPatch = APIdestinationHTTPMethod' "PATCH"

pattern AHTTPMPost :: APIdestinationHTTPMethod
pattern AHTTPMPost = APIdestinationHTTPMethod' "POST"

pattern AHTTPMPut :: APIdestinationHTTPMethod
pattern AHTTPMPut = APIdestinationHTTPMethod' "PUT"

{-# COMPLETE
  AHTTPMDelete,
  AHTTPMGet,
  AHTTPMHead,
  AHTTPMOptions,
  AHTTPMPatch,
  AHTTPMPost,
  AHTTPMPut,
  APIdestinationHTTPMethod'
  #-}

instance FromText APIdestinationHTTPMethod where
  parser = (APIdestinationHTTPMethod' . mk) <$> takeText

instance ToText APIdestinationHTTPMethod where
  toText (APIdestinationHTTPMethod' ci) = original ci

instance Hashable APIdestinationHTTPMethod

instance NFData APIdestinationHTTPMethod

instance ToByteString APIdestinationHTTPMethod

instance ToQuery APIdestinationHTTPMethod

instance ToHeader APIdestinationHTTPMethod

instance ToJSON APIdestinationHTTPMethod where
  toJSON = toJSONText

instance FromJSON APIdestinationHTTPMethod where
  parseJSON = parseJSONText "APIdestinationHTTPMethod"
