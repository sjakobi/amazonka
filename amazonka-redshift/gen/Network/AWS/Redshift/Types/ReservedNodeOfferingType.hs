{-# LANGUAGE DeriveDataTypeable #-}
{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE LambdaCase #-}
{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE PatternSynonyms #-}
{-# OPTIONS_GHC -fno-warn-unused-imports #-}

-- Derived from AWS service descriptions, licensed under Apache 2.0.

-- |
-- Module      : Network.AWS.Redshift.Types.ReservedNodeOfferingType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.ReservedNodeOfferingType
  ( ReservedNodeOfferingType
      ( ..,
        Regular,
        Upgradable
      ),
  )
where

import Data.CaseInsensitive
import Network.AWS.Prelude
import Network.AWS.Redshift.Internal

data ReservedNodeOfferingType
  = ReservedNodeOfferingType'
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

pattern Regular :: ReservedNodeOfferingType
pattern Regular = ReservedNodeOfferingType' "Regular"

pattern Upgradable :: ReservedNodeOfferingType
pattern Upgradable = ReservedNodeOfferingType' "Upgradable"

{-# COMPLETE
  Regular,
  Upgradable,
  ReservedNodeOfferingType'
  #-}

instance FromText ReservedNodeOfferingType where
  parser = (ReservedNodeOfferingType' . mk) <$> takeText

instance ToText ReservedNodeOfferingType where
  toText (ReservedNodeOfferingType' ci) = original ci

instance Hashable ReservedNodeOfferingType

instance NFData ReservedNodeOfferingType

instance ToByteString ReservedNodeOfferingType

instance ToQuery ReservedNodeOfferingType

instance ToHeader ReservedNodeOfferingType

instance FromXML ReservedNodeOfferingType where
  parseXML = parseXMLText "ReservedNodeOfferingType"
