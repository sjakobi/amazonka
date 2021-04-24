{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.Igmpv2SupportValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.Igmpv2SupportValue
  ( Igmpv2SupportValue
      ( ..,
        IDisable,
        IEnable
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data Igmpv2SupportValue
  = Igmpv2SupportValue'
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

pattern IDisable :: Igmpv2SupportValue
pattern IDisable = Igmpv2SupportValue' "disable"

pattern IEnable :: Igmpv2SupportValue
pattern IEnable = Igmpv2SupportValue' "enable"

{-# COMPLETE
  IDisable,
  IEnable,
  Igmpv2SupportValue'
  #-}

instance FromText Igmpv2SupportValue where
  parser = (Igmpv2SupportValue' . mk) <$> takeText

instance ToText Igmpv2SupportValue where
  toText (Igmpv2SupportValue' ci) = original ci

instance Hashable Igmpv2SupportValue

instance NFData Igmpv2SupportValue

instance ToByteString Igmpv2SupportValue

instance ToQuery Igmpv2SupportValue

instance ToHeader Igmpv2SupportValue

instance FromXML Igmpv2SupportValue where
  parseXML = parseXMLText "Igmpv2SupportValue"
