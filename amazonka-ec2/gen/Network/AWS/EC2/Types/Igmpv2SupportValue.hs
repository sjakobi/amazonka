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
-- Module      : Network.AWS.EC2.Types.Igmpv2SupportValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.Igmpv2SupportValue
  ( Igmpv2SupportValue
      ( ..,
        Igmpv2SupportValueDisable,
        Igmpv2SupportValueEnable
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype Igmpv2SupportValue = Igmpv2SupportValue'
  { fromIgmpv2SupportValue ::
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

pattern Igmpv2SupportValueDisable :: Igmpv2SupportValue
pattern Igmpv2SupportValueDisable = Igmpv2SupportValue' "disable"

pattern Igmpv2SupportValueEnable :: Igmpv2SupportValue
pattern Igmpv2SupportValueEnable = Igmpv2SupportValue' "enable"

{-# COMPLETE
  Igmpv2SupportValueDisable,
  Igmpv2SupportValueEnable,
  Igmpv2SupportValue'
  #-}

instance Prelude.FromText Igmpv2SupportValue where
  parser = Igmpv2SupportValue' Prelude.<$> Prelude.takeText

instance Prelude.ToText Igmpv2SupportValue where
  toText (Igmpv2SupportValue' x) = x

instance Prelude.Hashable Igmpv2SupportValue

instance Prelude.NFData Igmpv2SupportValue

instance Prelude.ToByteString Igmpv2SupportValue

instance Prelude.ToQuery Igmpv2SupportValue

instance Prelude.ToHeader Igmpv2SupportValue

instance Prelude.FromXML Igmpv2SupportValue where
  parseXML = Prelude.parseXMLText "Igmpv2SupportValue"
