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
-- Module      : Network.AWS.EC2.Types.SubnetState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.SubnetState
  ( SubnetState
      ( ..,
        SubnetStateAvailable,
        SubnetStatePending
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype SubnetState = SubnetState'
  { fromSubnetState ::
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

pattern SubnetStateAvailable :: SubnetState
pattern SubnetStateAvailable = SubnetState' "available"

pattern SubnetStatePending :: SubnetState
pattern SubnetStatePending = SubnetState' "pending"

{-# COMPLETE
  SubnetStateAvailable,
  SubnetStatePending,
  SubnetState'
  #-}

instance Prelude.FromText SubnetState where
  parser = SubnetState' Prelude.<$> Prelude.takeText

instance Prelude.ToText SubnetState where
  toText (SubnetState' x) = x

instance Prelude.Hashable SubnetState

instance Prelude.NFData SubnetState

instance Prelude.ToByteString SubnetState

instance Prelude.ToQuery SubnetState

instance Prelude.ToHeader SubnetState

instance Prelude.FromXML SubnetState where
  parseXML = Prelude.parseXMLText "SubnetState"
