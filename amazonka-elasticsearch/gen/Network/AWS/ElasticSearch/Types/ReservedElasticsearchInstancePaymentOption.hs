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
-- Module      : Network.AWS.ElasticSearch.Types.ReservedElasticsearchInstancePaymentOption
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ElasticSearch.Types.ReservedElasticsearchInstancePaymentOption
  ( ReservedElasticsearchInstancePaymentOption
      ( ..,
        ReservedElasticsearchInstancePaymentOptionALLUPFRONT,
        ReservedElasticsearchInstancePaymentOptionNOUPFRONT,
        ReservedElasticsearchInstancePaymentOptionPARTIALUPFRONT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ReservedElasticsearchInstancePaymentOption = ReservedElasticsearchInstancePaymentOption'
  { fromReservedElasticsearchInstancePaymentOption ::
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

pattern ReservedElasticsearchInstancePaymentOptionALLUPFRONT :: ReservedElasticsearchInstancePaymentOption
pattern ReservedElasticsearchInstancePaymentOptionALLUPFRONT = ReservedElasticsearchInstancePaymentOption' "ALL_UPFRONT"

pattern ReservedElasticsearchInstancePaymentOptionNOUPFRONT :: ReservedElasticsearchInstancePaymentOption
pattern ReservedElasticsearchInstancePaymentOptionNOUPFRONT = ReservedElasticsearchInstancePaymentOption' "NO_UPFRONT"

pattern ReservedElasticsearchInstancePaymentOptionPARTIALUPFRONT :: ReservedElasticsearchInstancePaymentOption
pattern ReservedElasticsearchInstancePaymentOptionPARTIALUPFRONT = ReservedElasticsearchInstancePaymentOption' "PARTIAL_UPFRONT"

{-# COMPLETE
  ReservedElasticsearchInstancePaymentOptionALLUPFRONT,
  ReservedElasticsearchInstancePaymentOptionNOUPFRONT,
  ReservedElasticsearchInstancePaymentOptionPARTIALUPFRONT,
  ReservedElasticsearchInstancePaymentOption'
  #-}

instance Prelude.FromText ReservedElasticsearchInstancePaymentOption where
  parser = ReservedElasticsearchInstancePaymentOption' Prelude.<$> Prelude.takeText

instance Prelude.ToText ReservedElasticsearchInstancePaymentOption where
  toText (ReservedElasticsearchInstancePaymentOption' x) = x

instance Prelude.Hashable ReservedElasticsearchInstancePaymentOption

instance Prelude.NFData ReservedElasticsearchInstancePaymentOption

instance Prelude.ToByteString ReservedElasticsearchInstancePaymentOption

instance Prelude.ToQuery ReservedElasticsearchInstancePaymentOption

instance Prelude.ToHeader ReservedElasticsearchInstancePaymentOption

instance Prelude.FromJSON ReservedElasticsearchInstancePaymentOption where
  parseJSON = Prelude.parseJSONText "ReservedElasticsearchInstancePaymentOption"
