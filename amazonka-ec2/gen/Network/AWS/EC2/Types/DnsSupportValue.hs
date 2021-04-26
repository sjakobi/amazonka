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
-- Module      : Network.AWS.EC2.Types.DnsSupportValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.DnsSupportValue
  ( DnsSupportValue
      ( ..,
        DnsSupportValueDisable,
        DnsSupportValueEnable
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype DnsSupportValue = DnsSupportValue'
  { fromDnsSupportValue ::
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

pattern DnsSupportValueDisable :: DnsSupportValue
pattern DnsSupportValueDisable = DnsSupportValue' "disable"

pattern DnsSupportValueEnable :: DnsSupportValue
pattern DnsSupportValueEnable = DnsSupportValue' "enable"

{-# COMPLETE
  DnsSupportValueDisable,
  DnsSupportValueEnable,
  DnsSupportValue'
  #-}

instance Prelude.FromText DnsSupportValue where
  parser = DnsSupportValue' Prelude.<$> Prelude.takeText

instance Prelude.ToText DnsSupportValue where
  toText (DnsSupportValue' x) = x

instance Prelude.Hashable DnsSupportValue

instance Prelude.NFData DnsSupportValue

instance Prelude.ToByteString DnsSupportValue

instance Prelude.ToQuery DnsSupportValue

instance Prelude.ToHeader DnsSupportValue

instance Prelude.FromXML DnsSupportValue where
  parseXML = Prelude.parseXMLText "DnsSupportValue"
