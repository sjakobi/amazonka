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
-- Module      : Network.AWS.Discovery.Types.ConfigurationItemType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Discovery.Types.ConfigurationItemType
  ( ConfigurationItemType
      ( ..,
        ConfigurationItemTypeAPPLICATION,
        ConfigurationItemTypeCONNECTION,
        ConfigurationItemTypePROCESS,
        ConfigurationItemTypeSERVER
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ConfigurationItemType = ConfigurationItemType'
  { fromConfigurationItemType ::
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

pattern ConfigurationItemTypeAPPLICATION :: ConfigurationItemType
pattern ConfigurationItemTypeAPPLICATION = ConfigurationItemType' "APPLICATION"

pattern ConfigurationItemTypeCONNECTION :: ConfigurationItemType
pattern ConfigurationItemTypeCONNECTION = ConfigurationItemType' "CONNECTION"

pattern ConfigurationItemTypePROCESS :: ConfigurationItemType
pattern ConfigurationItemTypePROCESS = ConfigurationItemType' "PROCESS"

pattern ConfigurationItemTypeSERVER :: ConfigurationItemType
pattern ConfigurationItemTypeSERVER = ConfigurationItemType' "SERVER"

{-# COMPLETE
  ConfigurationItemTypeAPPLICATION,
  ConfigurationItemTypeCONNECTION,
  ConfigurationItemTypePROCESS,
  ConfigurationItemTypeSERVER,
  ConfigurationItemType'
  #-}

instance Prelude.FromText ConfigurationItemType where
  parser = ConfigurationItemType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ConfigurationItemType where
  toText (ConfigurationItemType' x) = x

instance Prelude.Hashable ConfigurationItemType

instance Prelude.NFData ConfigurationItemType

instance Prelude.ToByteString ConfigurationItemType

instance Prelude.ToQuery ConfigurationItemType

instance Prelude.ToHeader ConfigurationItemType

instance Prelude.ToJSON ConfigurationItemType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ConfigurationItemType where
  parseJSON = Prelude.parseJSONText "ConfigurationItemType"
