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
-- Module      : Network.AWS.EC2.Types.ApplianceModeSupportValue
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EC2.Types.ApplianceModeSupportValue
  ( ApplianceModeSupportValue
      ( ..,
        ApplianceModeSupportValueDisable,
        ApplianceModeSupportValueEnable
      ),
  )
where

import Network.AWS.EC2.Internal
import qualified Network.AWS.Prelude as Prelude

newtype ApplianceModeSupportValue = ApplianceModeSupportValue'
  { fromApplianceModeSupportValue ::
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

pattern ApplianceModeSupportValueDisable :: ApplianceModeSupportValue
pattern ApplianceModeSupportValueDisable = ApplianceModeSupportValue' "disable"

pattern ApplianceModeSupportValueEnable :: ApplianceModeSupportValue
pattern ApplianceModeSupportValueEnable = ApplianceModeSupportValue' "enable"

{-# COMPLETE
  ApplianceModeSupportValueDisable,
  ApplianceModeSupportValueEnable,
  ApplianceModeSupportValue'
  #-}

instance Prelude.FromText ApplianceModeSupportValue where
  parser = ApplianceModeSupportValue' Prelude.<$> Prelude.takeText

instance Prelude.ToText ApplianceModeSupportValue where
  toText (ApplianceModeSupportValue' x) = x

instance Prelude.Hashable ApplianceModeSupportValue

instance Prelude.NFData ApplianceModeSupportValue

instance Prelude.ToByteString ApplianceModeSupportValue

instance Prelude.ToQuery ApplianceModeSupportValue

instance Prelude.ToHeader ApplianceModeSupportValue

instance Prelude.FromXML ApplianceModeSupportValue where
  parseXML = Prelude.parseXMLText "ApplianceModeSupportValue"
