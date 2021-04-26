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
-- Module      : Network.AWS.CognitoIdentityProvider.Types.DeliveryMediumType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CognitoIdentityProvider.Types.DeliveryMediumType
  ( DeliveryMediumType
      ( ..,
        DeliveryMediumTypeEMAIL,
        DeliveryMediumTypeSMS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DeliveryMediumType = DeliveryMediumType'
  { fromDeliveryMediumType ::
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

pattern DeliveryMediumTypeEMAIL :: DeliveryMediumType
pattern DeliveryMediumTypeEMAIL = DeliveryMediumType' "EMAIL"

pattern DeliveryMediumTypeSMS :: DeliveryMediumType
pattern DeliveryMediumTypeSMS = DeliveryMediumType' "SMS"

{-# COMPLETE
  DeliveryMediumTypeEMAIL,
  DeliveryMediumTypeSMS,
  DeliveryMediumType'
  #-}

instance Prelude.FromText DeliveryMediumType where
  parser = DeliveryMediumType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeliveryMediumType where
  toText (DeliveryMediumType' x) = x

instance Prelude.Hashable DeliveryMediumType

instance Prelude.NFData DeliveryMediumType

instance Prelude.ToByteString DeliveryMediumType

instance Prelude.ToQuery DeliveryMediumType

instance Prelude.ToHeader DeliveryMediumType

instance Prelude.ToJSON DeliveryMediumType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DeliveryMediumType where
  parseJSON = Prelude.parseJSONText "DeliveryMediumType"
