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
-- Module      : Network.AWS.EC2.Types.StaticSourcesSupportValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.StaticSourcesSupportValue
  ( StaticSourcesSupportValue
      ( ..,
        StaticSourcesSupportValueDisable,
        StaticSourcesSupportValueEnable
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype StaticSourcesSupportValue = StaticSourcesSupportValue'
  { fromStaticSourcesSupportValue ::
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

pattern StaticSourcesSupportValueDisable :: StaticSourcesSupportValue
pattern StaticSourcesSupportValueDisable = StaticSourcesSupportValue' "disable"

pattern StaticSourcesSupportValueEnable :: StaticSourcesSupportValue
pattern StaticSourcesSupportValueEnable = StaticSourcesSupportValue' "enable"

{-# COMPLETE
  StaticSourcesSupportValueDisable,
  StaticSourcesSupportValueEnable,
  StaticSourcesSupportValue'
  #-}

instance Prelude.FromText StaticSourcesSupportValue where
  parser = StaticSourcesSupportValue' Prelude.<$> Prelude.takeText

instance Prelude.ToText StaticSourcesSupportValue where
  toText (StaticSourcesSupportValue' x) = x

instance Prelude.Hashable StaticSourcesSupportValue

instance Prelude.NFData StaticSourcesSupportValue

instance Prelude.ToByteString StaticSourcesSupportValue

instance Prelude.ToQuery StaticSourcesSupportValue

instance Prelude.ToHeader StaticSourcesSupportValue

instance Prelude.FromXML StaticSourcesSupportValue where
  parseXML = Prelude.parseXMLText "StaticSourcesSupportValue"
