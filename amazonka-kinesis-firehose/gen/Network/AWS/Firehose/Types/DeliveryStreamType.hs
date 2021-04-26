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
-- Module      : Network.AWS.Firehose.Types.DeliveryStreamType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.DeliveryStreamType
  ( DeliveryStreamType
      ( ..,
        DeliveryStreamTypeDirectPut,
        DeliveryStreamTypeKinesisStreamAsSource
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype DeliveryStreamType = DeliveryStreamType'
  { fromDeliveryStreamType ::
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

pattern DeliveryStreamTypeDirectPut :: DeliveryStreamType
pattern DeliveryStreamTypeDirectPut = DeliveryStreamType' "DirectPut"

pattern DeliveryStreamTypeKinesisStreamAsSource :: DeliveryStreamType
pattern DeliveryStreamTypeKinesisStreamAsSource = DeliveryStreamType' "KinesisStreamAsSource"

{-# COMPLETE
  DeliveryStreamTypeDirectPut,
  DeliveryStreamTypeKinesisStreamAsSource,
  DeliveryStreamType'
  #-}

instance Prelude.FromText DeliveryStreamType where
  parser = DeliveryStreamType' Prelude.<$> Prelude.takeText

instance Prelude.ToText DeliveryStreamType where
  toText (DeliveryStreamType' x) = x

instance Prelude.Hashable DeliveryStreamType

instance Prelude.NFData DeliveryStreamType

instance Prelude.ToByteString DeliveryStreamType

instance Prelude.ToQuery DeliveryStreamType

instance Prelude.ToHeader DeliveryStreamType

instance Prelude.ToJSON DeliveryStreamType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON DeliveryStreamType where
  parseJSON = Prelude.parseJSONText "DeliveryStreamType"
