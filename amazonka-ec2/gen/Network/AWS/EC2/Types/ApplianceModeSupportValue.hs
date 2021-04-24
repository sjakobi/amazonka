{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.ApplianceModeSupportValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ApplianceModeSupportValue
  ( ApplianceModeSupportValue
      ( ..,
        AMSVDisable,
        AMSVEnable
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data ApplianceModeSupportValue
  = ApplianceModeSupportValue'
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

pattern AMSVDisable :: ApplianceModeSupportValue
pattern AMSVDisable = ApplianceModeSupportValue' "disable"

pattern AMSVEnable :: ApplianceModeSupportValue
pattern AMSVEnable = ApplianceModeSupportValue' "enable"

{-# COMPLETE
  AMSVDisable,
  AMSVEnable,
  ApplianceModeSupportValue'
  #-}

instance FromText ApplianceModeSupportValue where
  parser = (ApplianceModeSupportValue' . mk) <$> takeText

instance ToText ApplianceModeSupportValue where
  toText (ApplianceModeSupportValue' ci) = original ci

instance Hashable ApplianceModeSupportValue

instance NFData ApplianceModeSupportValue

instance ToByteString ApplianceModeSupportValue

instance ToQuery ApplianceModeSupportValue

instance ToHeader ApplianceModeSupportValue

instance FromXML ApplianceModeSupportValue where
  parseXML = parseXMLText "ApplianceModeSupportValue"
