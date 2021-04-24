{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.RefreshSchemasStatusTypeValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.RefreshSchemasStatusTypeValue
  ( RefreshSchemasStatusTypeValue
      ( ..,
        Failed,
        Refreshing,
        Successful
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data RefreshSchemasStatusTypeValue
  = RefreshSchemasStatusTypeValue'
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

pattern Failed :: RefreshSchemasStatusTypeValue
pattern Failed = RefreshSchemasStatusTypeValue' "failed"

pattern Refreshing :: RefreshSchemasStatusTypeValue
pattern Refreshing = RefreshSchemasStatusTypeValue' "refreshing"

pattern Successful :: RefreshSchemasStatusTypeValue
pattern Successful = RefreshSchemasStatusTypeValue' "successful"

{-# COMPLETE
  Failed,
  Refreshing,
  Successful,
  RefreshSchemasStatusTypeValue'
  #-}

instance FromText RefreshSchemasStatusTypeValue where
  parser = (RefreshSchemasStatusTypeValue' . mk) <$> takeText

instance ToText RefreshSchemasStatusTypeValue where
  toText (RefreshSchemasStatusTypeValue' ci) = original ci

instance Hashable RefreshSchemasStatusTypeValue

instance NFData RefreshSchemasStatusTypeValue

instance ToByteString RefreshSchemasStatusTypeValue

instance ToQuery RefreshSchemasStatusTypeValue

instance ToHeader RefreshSchemasStatusTypeValue

instance FromJSON RefreshSchemasStatusTypeValue where
  parseJSON = parseJSONText "RefreshSchemasStatusTypeValue"
