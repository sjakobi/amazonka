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
-- Module      : Network.AWS.Redshift.Types.ReservedNodeOfferingType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Redshift.Types.ReservedNodeOfferingType
  ( ReservedNodeOfferingType
      ( ..,
        ReservedNodeOfferingTypeRegular,
        ReservedNodeOfferingTypeUpgradable
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Redshift.Internal

newtype ReservedNodeOfferingType = ReservedNodeOfferingType'
  { fromReservedNodeOfferingType ::
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

pattern ReservedNodeOfferingTypeRegular :: ReservedNodeOfferingType
pattern ReservedNodeOfferingTypeRegular = ReservedNodeOfferingType' "Regular"

pattern ReservedNodeOfferingTypeUpgradable :: ReservedNodeOfferingType
pattern ReservedNodeOfferingTypeUpgradable = ReservedNodeOfferingType' "Upgradable"

{-# COMPLETE
  ReservedNodeOfferingTypeRegular,
  ReservedNodeOfferingTypeUpgradable,
  ReservedNodeOfferingType'
  #-}

instance Prelude.FromText ReservedNodeOfferingType where
  parser = ReservedNodeOfferingType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReservedNodeOfferingType where
  toText (ReservedNodeOfferingType' x) = x

instance Prelude.Hashable ReservedNodeOfferingType

instance Prelude.NFData ReservedNodeOfferingType

instance Prelude.ToByteString ReservedNodeOfferingType

instance Prelude.ToQuery ReservedNodeOfferingType

instance Prelude.ToHeader ReservedNodeOfferingType

instance Prelude.FromXML ReservedNodeOfferingType where
  parseXML = Prelude.parseXMLText "ReservedNodeOfferingType"
