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
-- Module      : Network.AWS.EC2.Types.UsageClassType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.UsageClassType
  ( UsageClassType
      ( ..,
        UsageClassTypeOnDemand,
        UsageClassTypeSpot
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype UsageClassType = UsageClassType'
  { fromUsageClassType ::
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

pattern UsageClassTypeOnDemand :: UsageClassType
pattern UsageClassTypeOnDemand = UsageClassType' "on-demand"

pattern UsageClassTypeSpot :: UsageClassType
pattern UsageClassTypeSpot = UsageClassType' "spot"

{-# COMPLETE
  UsageClassTypeOnDemand,
  UsageClassTypeSpot,
  UsageClassType'
  #-}

instance Prelude.FromText UsageClassType where
  parser = UsageClassType' Prelude.<$> Prelude.takeText

instance Prelude.ToText UsageClassType where
  toText (UsageClassType' x) = x

instance Prelude.Hashable UsageClassType

instance Prelude.NFData UsageClassType

instance Prelude.ToByteString UsageClassType

instance Prelude.ToQuery UsageClassType

instance Prelude.ToHeader UsageClassType

instance Prelude.FromXML UsageClassType where
  parseXML = Prelude.parseXMLText "UsageClassType"
