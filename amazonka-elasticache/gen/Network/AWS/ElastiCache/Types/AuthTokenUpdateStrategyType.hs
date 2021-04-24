{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.ElastiCache.Types.AuthTokenUpdateStrategyType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElastiCache.Types.AuthTokenUpdateStrategyType
  ( AuthTokenUpdateStrategyType
      ( ..,
        Delete,
        Rotate,
        Set
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data AuthTokenUpdateStrategyType
  = AuthTokenUpdateStrategyType'
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

pattern Delete :: AuthTokenUpdateStrategyType
pattern Delete = AuthTokenUpdateStrategyType' "DELETE"

pattern Rotate :: AuthTokenUpdateStrategyType
pattern Rotate = AuthTokenUpdateStrategyType' "ROTATE"

pattern Set :: AuthTokenUpdateStrategyType
pattern Set = AuthTokenUpdateStrategyType' "SET"

{-# COMPLETE
  Delete,
  Rotate,
  Set,
  AuthTokenUpdateStrategyType'
  #-}

instance FromText AuthTokenUpdateStrategyType where
  parser = (AuthTokenUpdateStrategyType' . mk) <$> takeText

instance ToText AuthTokenUpdateStrategyType where
  toText (AuthTokenUpdateStrategyType' ci) = original ci

instance Hashable AuthTokenUpdateStrategyType

instance NFData AuthTokenUpdateStrategyType

instance ToByteString AuthTokenUpdateStrategyType

instance ToQuery AuthTokenUpdateStrategyType

instance ToHeader AuthTokenUpdateStrategyType
