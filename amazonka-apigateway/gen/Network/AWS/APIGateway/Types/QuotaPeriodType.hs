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
-- Module      : Network.AWS.APIGateway.Types.QuotaPeriodType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.APIGateway.Types.QuotaPeriodType
  ( QuotaPeriodType
      ( ..,
        QuotaPeriodTypeDAY,
        QuotaPeriodTypeMONTH,
        QuotaPeriodTypeWEEK
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype QuotaPeriodType = QuotaPeriodType'
  { fromQuotaPeriodType ::
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

pattern QuotaPeriodTypeDAY :: QuotaPeriodType
pattern QuotaPeriodTypeDAY = QuotaPeriodType' "DAY"

pattern QuotaPeriodTypeMONTH :: QuotaPeriodType
pattern QuotaPeriodTypeMONTH = QuotaPeriodType' "MONTH"

pattern QuotaPeriodTypeWEEK :: QuotaPeriodType
pattern QuotaPeriodTypeWEEK = QuotaPeriodType' "WEEK"

{-# COMPLETE
  QuotaPeriodTypeDAY,
  QuotaPeriodTypeMONTH,
  QuotaPeriodTypeWEEK,
  QuotaPeriodType'
  #-}

instance Prelude.FromText QuotaPeriodType where
  parser = QuotaPeriodType' Prelude.<$> Prelude.takeText

instance Prelude.ToText QuotaPeriodType where
  toText (QuotaPeriodType' x) = x

instance Prelude.Hashable QuotaPeriodType

instance Prelude.NFData QuotaPeriodType

instance Prelude.ToByteString QuotaPeriodType

instance Prelude.ToQuery QuotaPeriodType

instance Prelude.ToHeader QuotaPeriodType

instance Prelude.ToJSON QuotaPeriodType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON QuotaPeriodType where
  parseJSON = Prelude.parseJSONText "QuotaPeriodType"
