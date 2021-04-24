{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudDirectory.Types.FacetStyle
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudDirectory.Types.FacetStyle
  ( FacetStyle
      ( ..,
        Dynamic,
        Static
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data FacetStyle = FacetStyle' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Dynamic :: FacetStyle
pattern Dynamic = FacetStyle' "DYNAMIC"

pattern Static :: FacetStyle
pattern Static = FacetStyle' "STATIC"

{-# COMPLETE
  Dynamic,
  Static,
  FacetStyle'
  #-}

instance FromText FacetStyle where
  parser = (FacetStyle' . mk) <$> takeText

instance ToText FacetStyle where
  toText (FacetStyle' ci) = original ci

instance Hashable FacetStyle

instance NFData FacetStyle

instance ToByteString FacetStyle

instance ToQuery FacetStyle

instance ToHeader FacetStyle

instance ToJSON FacetStyle where
  toJSON = toJSONText

instance FromJSON FacetStyle where
  parseJSON = parseJSONText "FacetStyle"
