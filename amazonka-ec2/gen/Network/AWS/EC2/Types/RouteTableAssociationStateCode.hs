{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE NoImplicitPrelude #-}
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
        RouteTableAssociationStateCodeAssociated,
        RouteTableAssociationStateCodeAssociating,
        RouteTableAssociationStateCodeDisassociated,
        RouteTableAssociationStateCodeDisassociating,
        RouteTableAssociationStateCodeFailed
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype RouteTableAssociationStateCode = RouteTableAssociationStateCode'
  { fromRouteTableAssociationStateCode ::
      Prelude.Text
  }
  deriving
    ( Prelude.Eq,
      Prelude.Ord,
      Prelude.Read,
      Prelude.Show,
      Prelude.Data,
      Prelude.Typeable,
      Prelude.Generic
    )

pattern RouteTableAssociationStateCodeAssociated :: RouteTableAssociationStateCode
pattern RouteTableAssociationStateCodeAssociated = RouteTableAssociationStateCode' "associated"

pattern RouteTableAssociationStateCodeAssociating :: RouteTableAssociationStateCode
pattern RouteTableAssociationStateCodeAssociating = RouteTableAssociationStateCode' "associating"

pattern RouteTableAssociationStateCodeDisassociated :: RouteTableAssociationStateCode
pattern RouteTableAssociationStateCodeDisassociated = RouteTableAssociationStateCode' "disassociated"

pattern RouteTableAssociationStateCodeDisassociating :: RouteTableAssociationStateCode
pattern RouteTableAssociationStateCodeDisassociating = RouteTableAssociationStateCode' "disassociating"

pattern RouteTableAssociationStateCodeFailed :: RouteTableAssociationStateCode
pattern RouteTableAssociationStateCodeFailed = RouteTableAssociationStateCode' "failed"

{-# COMPLETE
  RouteTableAssociationStateCodeAssociated,
  RouteTableAssociationStateCodeAssociating,
  RouteTableAssociationStateCodeDisassociated,
  RouteTableAssociationStateCodeDisassociating,
  RouteTableAssociationStateCodeFailed,
  RouteTableAssociationStateCode'
  #-}

instance Prelude.FromText RouteTableAssociationStateCode where
  parser = RouteTableAssociationStateCode' Prelude.<$> Prelude.takeText

instance Prelude.ToText RouteTableAssociationStateCode where
  toText (RouteTableAssociationStateCode' x) = x

instance Prelude.Hashable RouteTableAssociationStateCode

instance Prelude.NFData RouteTableAssociationStateCode

instance Prelude.ToByteString RouteTableAssociationStateCode

instance Prelude.ToQuery RouteTableAssociationStateCode

instance Prelude.ToHeader RouteTableAssociationStateCode

instance Prelude.FromXML RouteTableAssociationStateCode where
  parseXML = Prelude.parseXMLText "RouteTableAssociationStateCode"
