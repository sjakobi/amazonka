{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Lightsail.Types.ForwardValues
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.ForwardValues
  ( ForwardValues
      ( ..,
        All,
        AllowList,
        None
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data ForwardValues = ForwardValues' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern All :: ForwardValues
pattern All = ForwardValues' "all"

pattern AllowList :: ForwardValues
pattern AllowList = ForwardValues' "allow-list"

pattern None :: ForwardValues
pattern None = ForwardValues' "none"

{-# COMPLETE
  All,
  AllowList,
  None,
  ForwardValues'
  #-}

instance FromText ForwardValues where
  parser = (ForwardValues' . mk) <$> takeText

instance ToText ForwardValues where
  toText (ForwardValues' ci) = original ci

instance Hashable ForwardValues

instance NFData ForwardValues

instance ToByteString ForwardValues

instance ToQuery ForwardValues

instance ToHeader ForwardValues

instance ToJSON ForwardValues where
  toJSON = toJSONText

instance FromJSON ForwardValues where
  parseJSON = parseJSONText "ForwardValues"
