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
-- Module      : Network.AWS.EC2.Types.TrafficDirection
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.TrafficDirection
  ( TrafficDirection
      ( ..,
        TrafficDirectionEgress,
        TrafficDirectionIngress
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype TrafficDirection = TrafficDirection'
  { fromTrafficDirection ::
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

pattern TrafficDirectionEgress :: TrafficDirection
pattern TrafficDirectionEgress = TrafficDirection' "egress"

pattern TrafficDirectionIngress :: TrafficDirection
pattern TrafficDirectionIngress = TrafficDirection' "ingress"

{-# COMPLETE
  TrafficDirectionEgress,
  TrafficDirectionIngress,
  TrafficDirection'
  #-}

instance Prelude.FromText TrafficDirection where
  parser = TrafficDirection' Prelude.<$> Prelude.takeText

instance Prelude.ToText TrafficDirection where
  toText (TrafficDirection' x) = x

instance Prelude.Hashable TrafficDirection

instance Prelude.NFData TrafficDirection

instance Prelude.ToByteString TrafficDirection

instance Prelude.ToQuery TrafficDirection

instance Prelude.ToHeader TrafficDirection

instance Prelude.FromXML TrafficDirection where
  parseXML = Prelude.parseXMLText "TrafficDirection"
