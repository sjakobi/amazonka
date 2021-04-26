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
-- Module      : Network.AWS.EC2.Types.DefaultTargetCapacityType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.DefaultTargetCapacityType
  ( DefaultTargetCapacityType
      ( ..,
        DefaultTargetCapacityTypeOnDemand,
        DefaultTargetCapacityTypeSpot
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype DefaultTargetCapacityType = DefaultTargetCapacityType'
  { fromDefaultTargetCapacityType ::
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

pattern DefaultTargetCapacityTypeOnDemand :: DefaultTargetCapacityType
pattern DefaultTargetCapacityTypeOnDemand = DefaultTargetCapacityType' "on-demand"

pattern DefaultTargetCapacityTypeSpot :: DefaultTargetCapacityType
pattern DefaultTargetCapacityTypeSpot = DefaultTargetCapacityType' "spot"

{-# COMPLETE
  DefaultTargetCapacityTypeOnDemand,
  DefaultTargetCapacityTypeSpot,
  DefaultTargetCapacityType'
  #-}

instance Prelude.FromText DefaultTargetCapacityType where
  parser = DefaultTargetCapacityType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DefaultTargetCapacityType where
  toText (DefaultTargetCapacityType' x) = x

instance Prelude.Hashable DefaultTargetCapacityType

instance Prelude.NFData DefaultTargetCapacityType

instance Prelude.ToByteString DefaultTargetCapacityType

instance Prelude.ToQuery DefaultTargetCapacityType

instance Prelude.ToHeader DefaultTargetCapacityType

instance Prelude.FromXML DefaultTargetCapacityType where
  parseXML = Prelude.parseXMLText "DefaultTargetCapacityType"
