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
-- Module      : Network.AWS.EC2.Types.TrafficType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TrafficType
  ( TrafficType
      ( ..,
        TrafficTypeACCEPT,
        TrafficTypeALL,
        TrafficTypeREJECT
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype TrafficType = TrafficType'
  { fromTrafficType ::
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

pattern TrafficTypeACCEPT :: TrafficType
pattern TrafficTypeACCEPT = TrafficType' "ACCEPT"

pattern TrafficTypeALL :: TrafficType
pattern TrafficTypeALL = TrafficType' "ALL"

pattern TrafficTypeREJECT :: TrafficType
pattern TrafficTypeREJECT = TrafficType' "REJECT"

{-# COMPLETE
  TrafficTypeACCEPT,
  TrafficTypeALL,
  TrafficTypeREJECT,
  TrafficType'
  #-}

instance Prelude.FromText TrafficType where
  parser = TrafficType' Prelude.<$> Prelude.takeText

instance Prelude.ToText TrafficType where
  toText (TrafficType' x) = x

instance Prelude.Hashable TrafficType

instance Prelude.NFData TrafficType

instance Prelude.ToByteString TrafficType

instance Prelude.ToQuery TrafficType

instance Prelude.ToHeader TrafficType

instance Prelude.FromXML TrafficType where
  parseXML = Prelude.parseXMLText "TrafficType"
