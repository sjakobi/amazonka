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
-- Module      : Network.AWS.Kinesis.Types.ConsumerStatus
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Kinesis.Types.ConsumerStatus
  ( ConsumerStatus
      ( ..,
        ConsumerStatusACTIVE,
        ConsumerStatusCREATING,
        ConsumerStatusDELETING
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ConsumerStatus = ConsumerStatus'
  { fromConsumerStatus ::
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

pattern ConsumerStatusACTIVE :: ConsumerStatus
pattern ConsumerStatusACTIVE = ConsumerStatus' "ACTIVE"

pattern ConsumerStatusCREATING :: ConsumerStatus
pattern ConsumerStatusCREATING = ConsumerStatus' "CREATING"

pattern ConsumerStatusDELETING :: ConsumerStatus
pattern ConsumerStatusDELETING = ConsumerStatus' "DELETING"

{-# COMPLETE
  ConsumerStatusACTIVE,
  ConsumerStatusCREATING,
  ConsumerStatusDELETING,
  ConsumerStatus'
  #-}

instance Prelude.FromText ConsumerStatus where
  parser = ConsumerStatus' Prelude.<$> Prelude.takeText

instance Prelude.ToText ConsumerStatus where
  toText (ConsumerStatus' x) = x

instance Prelude.Hashable ConsumerStatus

instance Prelude.NFData ConsumerStatus

instance Prelude.ToByteString ConsumerStatus

instance Prelude.ToQuery ConsumerStatus

instance Prelude.ToHeader ConsumerStatus

instance Prelude.FromJSON ConsumerStatus where
  parseJSON = Prelude.parseJSONText "ConsumerStatus"
