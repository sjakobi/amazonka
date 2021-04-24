{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.DefaultRouteTableAssociationValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.DefaultRouteTableAssociationValue
  ( DefaultRouteTableAssociationValue
      ( ..,
        DRTAVDisable,
        DRTAVEnable
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data DefaultRouteTableAssociationValue
  = DefaultRouteTableAssociationValue'
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

pattern DRTAVDisable :: DefaultRouteTableAssociationValue
pattern DRTAVDisable = DefaultRouteTableAssociationValue' "disable"

pattern DRTAVEnable :: DefaultRouteTableAssociationValue
pattern DRTAVEnable = DefaultRouteTableAssociationValue' "enable"

{-# COMPLETE
  DRTAVDisable,
  DRTAVEnable,
  DefaultRouteTableAssociationValue'
  #-}

instance FromText DefaultRouteTableAssociationValue where
  parser = (DefaultRouteTableAssociationValue' . mk) <$> takeText

instance ToText DefaultRouteTableAssociationValue where
  toText (DefaultRouteTableAssociationValue' ci) = original ci

instance Hashable DefaultRouteTableAssociationValue

instance NFData DefaultRouteTableAssociationValue

instance ToByteString DefaultRouteTableAssociationValue

instance ToQuery DefaultRouteTableAssociationValue

instance ToHeader DefaultRouteTableAssociationValue

instance FromXML DefaultRouteTableAssociationValue where
  parseXML = parseXMLText "DefaultRouteTableAssociationValue"
