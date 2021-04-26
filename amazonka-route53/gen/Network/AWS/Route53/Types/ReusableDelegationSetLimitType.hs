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
-- Module      : Network.AWS.Route53.Types.ReusableDelegationSetLimitType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Route53.Types.ReusableDelegationSetLimitType
  ( ReusableDelegationSetLimitType
      ( ..,
        ReusableDelegationSetLimitTypeMAXZONESBYREUSABLEDELEGATIONSET
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude
import Network.AWS.Route53.Internal

newtype ReusableDelegationSetLimitType = ReusableDelegationSetLimitType'
  { fromReusableDelegationSetLimitType ::
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

pattern ReusableDelegationSetLimitTypeMAXZONESBYREUSABLEDELEGATIONSET :: ReusableDelegationSetLimitType
pattern ReusableDelegationSetLimitTypeMAXZONESBYREUSABLEDELEGATIONSET = ReusableDelegationSetLimitType' "MAX_ZONES_BY_REUSABLE_DELEGATION_SET"

{-# COMPLETE
  ReusableDelegationSetLimitTypeMAXZONESBYREUSABLEDELEGATIONSET,
  ReusableDelegationSetLimitType'
  #-}

instance Prelude.FromText ReusableDelegationSetLimitType where
  parser = ReusableDelegationSetLimitType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReusableDelegationSetLimitType where
  toText (ReusableDelegationSetLimitType' x) = x

instance Prelude.Hashable ReusableDelegationSetLimitType

instance Prelude.NFData ReusableDelegationSetLimitType

instance Prelude.ToByteString ReusableDelegationSetLimitType

instance Prelude.ToQuery ReusableDelegationSetLimitType

instance Prelude.ToHeader ReusableDelegationSetLimitType

instance Prelude.FromXML ReusableDelegationSetLimitType where
  parseXML = Prelude.parseXMLText "ReusableDelegationSetLimitType"

instance Prelude.ToXML ReusableDelegationSetLimitType where
  toXML = Prelude.toXMLText
