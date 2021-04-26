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
-- Module      : Network.AWS.CloudHSM.Types.SubscriptionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CloudHSM.Types.SubscriptionType
  ( SubscriptionType
      ( ..,
        SubscriptionTypePRODUCTION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Specifies the type of subscription for the HSM.
--
-- -   __PRODUCTION__ - The HSM is being used in a production environment.
--
-- -   __TRIAL__ - The HSM is being used in a product trial.
newtype SubscriptionType = SubscriptionType'
  { fromSubscriptionType ::
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

pattern SubscriptionTypePRODUCTION :: SubscriptionType
pattern SubscriptionTypePRODUCTION = SubscriptionType' "PRODUCTION"

{-# COMPLETE
  SubscriptionTypePRODUCTION,
  SubscriptionType'
  #-}

instance Prelude.FromText SubscriptionType where
  parser = SubscriptionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText SubscriptionType where
  toText (SubscriptionType' x) = x

instance Prelude.Hashable SubscriptionType

instance Prelude.NFData SubscriptionType

instance Prelude.ToByteString SubscriptionType

instance Prelude.ToQuery SubscriptionType

instance Prelude.ToHeader SubscriptionType

instance Prelude.ToJSON SubscriptionType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON SubscriptionType where
  parseJSON = Prelude.parseJSONText "SubscriptionType"
