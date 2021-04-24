{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.EC2.Types.RouteTableAssociationStateCode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.RouteTableAssociationStateCode
  ( RouteTableAssociationStateCode
      ( ..,
        RTASCAssociated,
        RTASCAssociating,
        RTASCDisassociated,
        RTASCDisassociating,
        RTASCFailed
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.EC2.Internal
import Network.AWS.Prelude

data RouteTableAssociationStateCode
  = RouteTableAssociationStateCode'
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

pattern RTASCAssociated :: RouteTableAssociationStateCode
pattern RTASCAssociated = RouteTableAssociationStateCode' "associated"

pattern RTASCAssociating :: RouteTableAssociationStateCode
pattern RTASCAssociating = RouteTableAssociationStateCode' "associating"

pattern RTASCDisassociated :: RouteTableAssociationStateCode
pattern RTASCDisassociated = RouteTableAssociationStateCode' "disassociated"

pattern RTASCDisassociating :: RouteTableAssociationStateCode
pattern RTASCDisassociating = RouteTableAssociationStateCode' "disassociating"

pattern RTASCFailed :: RouteTableAssociationStateCode
pattern RTASCFailed = RouteTableAssociationStateCode' "failed"

{-# COMPLETE
  RTASCAssociated,
  RTASCAssociating,
  RTASCDisassociated,
  RTASCDisassociating,
  RTASCFailed,
  RouteTableAssociationStateCode'
  #-}

instance FromText RouteTableAssociationStateCode where
  parser = (RouteTableAssociationStateCode' . mk) <$> takeText

instance ToText RouteTableAssociationStateCode where
  toText (RouteTableAssociationStateCode' ci) = original ci

instance Hashable RouteTableAssociationStateCode

instance NFData RouteTableAssociationStateCode

instance ToByteString RouteTableAssociationStateCode

instance ToQuery RouteTableAssociationStateCode

instance ToHeader RouteTableAssociationStateCode

instance FromXML RouteTableAssociationStateCode where
  parseXML = parseXMLText "RouteTableAssociationStateCode"
