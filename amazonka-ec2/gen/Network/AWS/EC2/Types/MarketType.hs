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
-- Module      : Network.AWS.EC2.Types.MarketType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.MarketType
  ( MarketType
      ( ..,
        MarketTypeSpot
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype MarketType = MarketType'
  { fromMarketType ::
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

pattern MarketTypeSpot :: MarketType
pattern MarketTypeSpot = MarketType' "spot"

{-# COMPLETE
  MarketTypeSpot,
  MarketType'
  #-}

instance Prelude.FromText MarketType where
  parser = MarketType' Prelude.<$> Prelude.takeText

instance Prelude.ToText MarketType where
  toText (MarketType' x) = x

instance Prelude.Hashable MarketType

instance Prelude.NFData MarketType

instance Prelude.ToByteString MarketType

instance Prelude.ToQuery MarketType

instance Prelude.ToHeader MarketType

instance Prelude.FromXML MarketType where
  parseXML = Prelude.parseXMLText "MarketType"
