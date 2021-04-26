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
-- Module      : Network.AWS.EC2.Types.AssociatedNetworkType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.AssociatedNetworkType
  ( AssociatedNetworkType
      ( ..,
        AssociatedNetworkTypeVpc
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype AssociatedNetworkType = AssociatedNetworkType'
  { fromAssociatedNetworkType ::
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

pattern AssociatedNetworkTypeVpc :: AssociatedNetworkType
pattern AssociatedNetworkTypeVpc = AssociatedNetworkType' "vpc"

{-# COMPLETE
  AssociatedNetworkTypeVpc,
  AssociatedNetworkType'
  #-}

instance Prelude.FromText AssociatedNetworkType where
  parser = AssociatedNetworkType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AssociatedNetworkType where
  toText (AssociatedNetworkType' x) = x

instance Prelude.Hashable AssociatedNetworkType

instance Prelude.NFData AssociatedNetworkType

instance Prelude.ToByteString AssociatedNetworkType

instance Prelude.ToQuery AssociatedNetworkType

instance Prelude.ToHeader AssociatedNetworkType

instance Prelude.FromXML AssociatedNetworkType where
  parseXML = Prelude.parseXMLText "AssociatedNetworkType"
