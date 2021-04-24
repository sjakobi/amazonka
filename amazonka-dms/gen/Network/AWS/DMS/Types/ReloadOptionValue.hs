{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.DMS.Types.ReloadOptionValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.DMS.Types.ReloadOptionValue
  ( ReloadOptionValue
      ( ..,
        DataReload,
        ValidateOnly
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ReloadOptionValue = ReloadOptionValue' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern DataReload :: ReloadOptionValue
pattern DataReload = ReloadOptionValue' "data-reload"

pattern ValidateOnly :: ReloadOptionValue
pattern ValidateOnly = ReloadOptionValue' "validate-only"

{-# COMPLETE
  DataReload,
  ValidateOnly,
  ReloadOptionValue'
  #-}

instance FromText ReloadOptionValue where
  parser = (ReloadOptionValue' . mk) <$> takeText

instance ToText ReloadOptionValue where
  toText (ReloadOptionValue' ci) = original ci

instance Hashable ReloadOptionValue

instance NFData ReloadOptionValue

instance ToByteString ReloadOptionValue

instance ToQuery ReloadOptionValue

instance ToHeader ReloadOptionValue

instance ToJSON ReloadOptionValue where
  toJSON = toJSONText
