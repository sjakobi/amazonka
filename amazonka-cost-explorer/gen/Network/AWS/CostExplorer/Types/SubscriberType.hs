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
-- Module      : Network.AWS.CostExplorer.Types.SubscriberType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.SubscriberType
  ( SubscriberType
      ( ..,
        SubscriberTypeEMAIL,
        SubscriberTypeSNS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SubscriberType = SubscriberType'
  { fromSubscriberType ::
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

pattern SubscriberTypeEMAIL :: SubscriberType
pattern SubscriberTypeEMAIL = SubscriberType' "EMAIL"

pattern SubscriberTypeSNS :: SubscriberType
pattern SubscriberTypeSNS = SubscriberType' "SNS"

{-# COMPLETE
  SubscriberTypeEMAIL,
  SubscriberTypeSNS,
  SubscriberType'
  #-}

instance Prelude.FromText SubscriberType where
  parser = SubscriberType' Prelude.<$> Prelude.takeText

instance Prelude.ToText SubscriberType where
  toText (SubscriberType' x) = x

instance Prelude.Hashable SubscriberType

instance Prelude.NFData SubscriberType

instance Prelude.ToByteString SubscriberType

instance Prelude.ToQuery SubscriberType

instance Prelude.ToHeader SubscriberType

instance Prelude.ToJSON SubscriberType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON SubscriberType where
  parseJSON = Prelude.parseJSONText "SubscriberType"
