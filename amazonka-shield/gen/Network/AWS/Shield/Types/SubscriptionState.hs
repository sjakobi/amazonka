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
-- Module      : Network.AWS.Shield.Types.SubscriptionState
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Shield.Types.SubscriptionState
  ( SubscriptionState
      ( ..,
        SubscriptionStateACTIVE,
        SubscriptionStateINACTIVE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SubscriptionState = SubscriptionState'
  { fromSubscriptionState ::
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

pattern SubscriptionStateACTIVE :: SubscriptionState
pattern SubscriptionStateACTIVE = SubscriptionState' "ACTIVE"

pattern SubscriptionStateINACTIVE :: SubscriptionState
pattern SubscriptionStateINACTIVE = SubscriptionState' "INACTIVE"

{-# COMPLETE
  SubscriptionStateACTIVE,
  SubscriptionStateINACTIVE,
  SubscriptionState'
  #-}

instance Prelude.FromText SubscriptionState where
  parser = SubscriptionState' Prelude.<$> Prelude.takeText

instance Prelude.ToText SubscriptionState where
  toText (SubscriptionState' x) = x

instance Prelude.Hashable SubscriptionState

instance Prelude.NFData SubscriptionState

instance Prelude.ToByteString SubscriptionState

instance Prelude.ToQuery SubscriptionState

instance Prelude.ToHeader SubscriptionState

instance Prelude.FromJSON SubscriptionState where
  parseJSON = Prelude.parseJSONText "SubscriptionState"
