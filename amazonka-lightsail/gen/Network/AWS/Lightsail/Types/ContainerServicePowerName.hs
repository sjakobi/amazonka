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
-- Module      : Network.AWS.Lightsail.Types.ContainerServicePowerName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lightsail.Types.ContainerServicePowerName
  ( ContainerServicePowerName
      ( ..,
        ContainerServicePowerNameLarge,
        ContainerServicePowerNameMedium,
        ContainerServicePowerNameMicro,
        ContainerServicePowerNameNano,
        ContainerServicePowerNameSmall,
        ContainerServicePowerNameXlarge
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ContainerServicePowerName = ContainerServicePowerName'
  { fromContainerServicePowerName ::
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

pattern ContainerServicePowerNameLarge :: ContainerServicePowerName
pattern ContainerServicePowerNameLarge = ContainerServicePowerName' "large"

pattern ContainerServicePowerNameMedium :: ContainerServicePowerName
pattern ContainerServicePowerNameMedium = ContainerServicePowerName' "medium"

pattern ContainerServicePowerNameMicro :: ContainerServicePowerName
pattern ContainerServicePowerNameMicro = ContainerServicePowerName' "micro"

pattern ContainerServicePowerNameNano :: ContainerServicePowerName
pattern ContainerServicePowerNameNano = ContainerServicePowerName' "nano"

pattern ContainerServicePowerNameSmall :: ContainerServicePowerName
pattern ContainerServicePowerNameSmall = ContainerServicePowerName' "small"

pattern ContainerServicePowerNameXlarge :: ContainerServicePowerName
pattern ContainerServicePowerNameXlarge = ContainerServicePowerName' "xlarge"

{-# COMPLETE
  ContainerServicePowerNameLarge,
  ContainerServicePowerNameMedium,
  ContainerServicePowerNameMicro,
  ContainerServicePowerNameNano,
  ContainerServicePowerNameSmall,
  ContainerServicePowerNameXlarge,
  ContainerServicePowerName'
  #-}

instance Prelude.FromText ContainerServicePowerName where
  parser = ContainerServicePowerName' Prelude.<$> Prelude.takeText

instance Prelude.ToText ContainerServicePowerName where
  toText (ContainerServicePowerName' x) = x

instance Prelude.Hashable ContainerServicePowerName

instance Prelude.NFData ContainerServicePowerName

instance Prelude.ToByteString ContainerServicePowerName

instance Prelude.ToQuery ContainerServicePowerName

instance Prelude.ToHeader ContainerServicePowerName

instance Prelude.ToJSON ContainerServicePowerName where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ContainerServicePowerName where
  parseJSON = Prelude.parseJSONText "ContainerServicePowerName"
