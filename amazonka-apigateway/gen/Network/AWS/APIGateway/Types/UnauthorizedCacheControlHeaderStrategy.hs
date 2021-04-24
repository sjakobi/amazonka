{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.APIGateway.Types.UnauthorizedCacheControlHeaderStrategy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.UnauthorizedCacheControlHeaderStrategy
  ( UnauthorizedCacheControlHeaderStrategy
      ( ..,
        FailWith403,
        SucceedWithResponseHeader,
        SucceedWithoutResponseHeader
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data UnauthorizedCacheControlHeaderStrategy
  = UnauthorizedCacheControlHeaderStrategy'
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

pattern FailWith403 :: UnauthorizedCacheControlHeaderStrategy
pattern FailWith403 = UnauthorizedCacheControlHeaderStrategy' "FAIL_WITH_403"

pattern SucceedWithResponseHeader :: UnauthorizedCacheControlHeaderStrategy
pattern SucceedWithResponseHeader = UnauthorizedCacheControlHeaderStrategy' "SUCCEED_WITH_RESPONSE_HEADER"

pattern SucceedWithoutResponseHeader :: UnauthorizedCacheControlHeaderStrategy
pattern SucceedWithoutResponseHeader = UnauthorizedCacheControlHeaderStrategy' "SUCCEED_WITHOUT_RESPONSE_HEADER"

{-# COMPLETE
  FailWith403,
  SucceedWithResponseHeader,
  SucceedWithoutResponseHeader,
  UnauthorizedCacheControlHeaderStrategy'
  #-}

instance FromText UnauthorizedCacheControlHeaderStrategy where
  parser = (UnauthorizedCacheControlHeaderStrategy' . mk) <$> takeText

instance ToText UnauthorizedCacheControlHeaderStrategy where
  toText (UnauthorizedCacheControlHeaderStrategy' ci) = original ci

instance Hashable UnauthorizedCacheControlHeaderStrategy

instance NFData UnauthorizedCacheControlHeaderStrategy

instance ToByteString UnauthorizedCacheControlHeaderStrategy

instance ToQuery UnauthorizedCacheControlHeaderStrategy

instance ToHeader UnauthorizedCacheControlHeaderStrategy

instance FromJSON UnauthorizedCacheControlHeaderStrategy where
  parseJSON = parseJSONText "UnauthorizedCacheControlHeaderStrategy"
