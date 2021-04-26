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
-- Module      : Network.AWS.SES.Types.ConfigurationSetAttribute
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SES.Types.ConfigurationSetAttribute
  ( ConfigurationSetAttribute
      ( ..,
        ConfigurationSetAttributeDeliveryOptions,
        ConfigurationSetAttributeEventDestinations,
        ConfigurationSetAttributeReputationOptions,
        ConfigurationSetAttributeTrackingOptions
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ConfigurationSetAttribute = ConfigurationSetAttribute'
  { fromConfigurationSetAttribute ::
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

pattern ConfigurationSetAttributeDeliveryOptions :: ConfigurationSetAttribute
pattern ConfigurationSetAttributeDeliveryOptions = ConfigurationSetAttribute' "deliveryOptions"

pattern ConfigurationSetAttributeEventDestinations :: ConfigurationSetAttribute
pattern ConfigurationSetAttributeEventDestinations = ConfigurationSetAttribute' "eventDestinations"

pattern ConfigurationSetAttributeReputationOptions :: ConfigurationSetAttribute
pattern ConfigurationSetAttributeReputationOptions = ConfigurationSetAttribute' "reputationOptions"

pattern ConfigurationSetAttributeTrackingOptions :: ConfigurationSetAttribute
pattern ConfigurationSetAttributeTrackingOptions = ConfigurationSetAttribute' "trackingOptions"

{-# COMPLETE
  ConfigurationSetAttributeDeliveryOptions,
  ConfigurationSetAttributeEventDestinations,
  ConfigurationSetAttributeReputationOptions,
  ConfigurationSetAttributeTrackingOptions,
  ConfigurationSetAttribute'
  #-}

instance Prelude.FromText ConfigurationSetAttribute where
  parser = ConfigurationSetAttribute' Prelude.<$> Prelude.takeText

instance Prelude.ToText ConfigurationSetAttribute where
  toText (ConfigurationSetAttribute' x) = x

instance Prelude.Hashable ConfigurationSetAttribute

instance Prelude.NFData ConfigurationSetAttribute

instance Prelude.ToByteString ConfigurationSetAttribute

instance Prelude.ToQuery ConfigurationSetAttribute

instance Prelude.ToHeader ConfigurationSetAttribute
