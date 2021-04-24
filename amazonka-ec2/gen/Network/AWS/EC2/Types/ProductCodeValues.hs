{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ProductCodeValues
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ProductCodeValues
  ( ProductCodeValues
      ( ..,
        Devpay,
        Marketplace
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data ProductCodeValues = ProductCodeValues' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern Devpay :: ProductCodeValues
pattern Devpay = ProductCodeValues' "devpay"

pattern Marketplace :: ProductCodeValues
pattern Marketplace = ProductCodeValues' "marketplace"

{-# COMPLETE
  Devpay,
  Marketplace,
  ProductCodeValues'
  #-}

instance FromText ProductCodeValues where
  parser = (ProductCodeValues' . mk) <$> takeText

instance ToText ProductCodeValues where
  toText (ProductCodeValues' ci) = original ci

instance Hashable ProductCodeValues

instance NFData ProductCodeValues

instance ToByteString ProductCodeValues

instance ToQuery ProductCodeValues

instance ToHeader ProductCodeValues

instance FromXML ProductCodeValues where
  parseXML = parseXMLText "ProductCodeValues"
