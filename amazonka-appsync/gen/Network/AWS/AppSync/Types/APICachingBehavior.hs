{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.AppSync.Types.APICachingBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppSync.Types.APICachingBehavior
  ( APICachingBehavior
      ( ..,
        FullRequestCaching,
        PerResolverCaching
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data APICachingBehavior
  = APICachingBehavior'
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

pattern FullRequestCaching :: APICachingBehavior
pattern FullRequestCaching = APICachingBehavior' "FULL_REQUEST_CACHING"

pattern PerResolverCaching :: APICachingBehavior
pattern PerResolverCaching = APICachingBehavior' "PER_RESOLVER_CACHING"

{-# COMPLETE
  FullRequestCaching,
  PerResolverCaching,
  APICachingBehavior'
  #-}

instance FromText APICachingBehavior where
  parser = (APICachingBehavior' . mk) <$> takeText

instance ToText APICachingBehavior where
  toText (APICachingBehavior' ci) = original ci

instance Hashable APICachingBehavior

instance NFData APICachingBehavior

instance ToByteString APICachingBehavior

instance ToQuery APICachingBehavior

instance ToHeader APICachingBehavior

instance ToJSON APICachingBehavior where
  toJSON = toJSONText

instance FromJSON APICachingBehavior where
  parseJSON = parseJSONText "APICachingBehavior"
