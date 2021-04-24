{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.DNSSupportValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.DNSSupportValue
  ( DNSSupportValue
      ( ..,
        DSVDisable,
        DSVEnable
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data DNSSupportValue = DNSSupportValue' (CI Text)
  deriving
    ( Eq,
      Ord,
      Read,
      Show,
      Data,
      Typeable,
      Generic
    )

pattern DSVDisable :: DNSSupportValue
pattern DSVDisable = DNSSupportValue' "disable"

pattern DSVEnable :: DNSSupportValue
pattern DSVEnable = DNSSupportValue' "enable"

{-# COMPLETE
  DSVDisable,
  DSVEnable,
  DNSSupportValue'
  #-}

instance FromText DNSSupportValue where
  parser = (DNSSupportValue' . mk) <$> takeText

instance ToText DNSSupportValue where
  toText (DNSSupportValue' ci) = original ci

instance Hashable DNSSupportValue

instance NFData DNSSupportValue

instance ToByteString DNSSupportValue

instance ToQuery DNSSupportValue

instance ToHeader DNSSupportValue

instance FromXML DNSSupportValue where
  parseXML = parseXMLText "DNSSupportValue"
