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
-- Module      : Network.AWS.CostExplorer.Types.SubscriberStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CostExplorer.Types.SubscriberStatus
  ( SubscriberStatus
      ( ..,
        SubscriberStatusCONFIRMED,
        SubscriberStatusDECLINED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SubscriberStatus = SubscriberStatus'
  { fromSubscriberStatus ::
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

pattern SubscriberStatusCONFIRMED :: SubscriberStatus
pattern SubscriberStatusCONFIRMED = SubscriberStatus' "CONFIRMED"

pattern SubscriberStatusDECLINED :: SubscriberStatus
pattern SubscriberStatusDECLINED = SubscriberStatus' "DECLINED"

{-# COMPLETE
  SubscriberStatusCONFIRMED,
  SubscriberStatusDECLINED,
  SubscriberStatus'
  #-}

instance Prelude.FromText SubscriberStatus where
  parser = SubscriberStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText SubscriberStatus where
  toText (SubscriberStatus' x) = x

instance Prelude.Hashable SubscriberStatus

instance Prelude.NFData SubscriberStatus

instance Prelude.ToByteString SubscriberStatus

instance Prelude.ToQuery SubscriberStatus

instance Prelude.ToHeader SubscriberStatus

instance Prelude.ToJSON SubscriberStatus where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON SubscriberStatus where
  parseJSON = Prelude.parseJSONText "SubscriberStatus"
