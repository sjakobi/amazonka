{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.CloudFront.Types.PriceClass
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudFront.Types.PriceClass
  ( PriceClass
      ( ..,
        PriceClass100,
        PriceClass200,
        PriceClassAll
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude

data PriceClass = PriceClass' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern PriceClass100 :: PriceClass
pattern PriceClass100 = PriceClass' "PriceClass_100"

pattern PriceClass200 :: PriceClass
pattern PriceClass200 = PriceClass' "PriceClass_200"

pattern PriceClassAll :: PriceClass
pattern PriceClassAll = PriceClass' "PriceClass_All"

{-# COMPLETE
  PriceClass100,
  PriceClass200,
  PriceClassAll,
  PriceClass'
  #-}

instance FromText PriceClass where
  parser = (PriceClass' . mk) <$> takeText

instance ToText PriceClass where
  toText (PriceClass' ci) = original ci

instance Hashable PriceClass

instance NFData PriceClass

instance ToByteString PriceClass

instance ToQuery PriceClass

instance ToHeader PriceClass

instance FromXML PriceClass where
  parseXML = parseXMLText "PriceClass"

instance ToXML PriceClass where
  toXML = toXMLText
