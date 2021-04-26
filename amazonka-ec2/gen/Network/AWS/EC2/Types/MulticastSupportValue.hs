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
-- Module      : Network.AWS.EC2.Types.MulticastSupportValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.MulticastSupportValue
  ( MulticastSupportValue
      ( ..,
        MulticastSupportValueDisable,
        MulticastSupportValueEnable
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype MulticastSupportValue = MulticastSupportValue'
  { fromMulticastSupportValue ::
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

pattern MulticastSupportValueDisable :: MulticastSupportValue
pattern MulticastSupportValueDisable = MulticastSupportValue' "disable"

pattern MulticastSupportValueEnable :: MulticastSupportValue
pattern MulticastSupportValueEnable = MulticastSupportValue' "enable"

{-# COMPLETE
  MulticastSupportValueDisable,
  MulticastSupportValueEnable,
  MulticastSupportValue'
  #-}

instance Prelude.FromText MulticastSupportValue where
  parser = MulticastSupportValue' Prelude.<$> Prelude.takeText

instance Prelude.ToText MulticastSupportValue where
  toText (MulticastSupportValue' x) = x

instance Prelude.Hashable MulticastSupportValue

instance Prelude.NFData MulticastSupportValue

instance Prelude.ToByteString MulticastSupportValue

instance Prelude.ToQuery MulticastSupportValue

instance Prelude.ToHeader MulticastSupportValue

instance Prelude.FromXML MulticastSupportValue where
  parseXML = Prelude.parseXMLText "MulticastSupportValue"
