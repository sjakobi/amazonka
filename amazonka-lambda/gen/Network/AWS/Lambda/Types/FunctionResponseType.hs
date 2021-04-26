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
-- Module      : Network.AWS.Lambda.Types.FunctionResponseType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.FunctionResponseType
  ( FunctionResponseType
      ( ..,
        FunctionResponseTypeReportBatchItemFailures
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype FunctionResponseType = FunctionResponseType'
  { fromFunctionResponseType ::
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

pattern FunctionResponseTypeReportBatchItemFailures :: FunctionResponseType
pattern FunctionResponseTypeReportBatchItemFailures = FunctionResponseType' "ReportBatchItemFailures"

{-# COMPLETE
  FunctionResponseTypeReportBatchItemFailures,
  FunctionResponseType'
  #-}

instance Prelude.FromText FunctionResponseType where
  parser = FunctionResponseType' Prelude.<$> Prelude.takeText

instance Prelude.ToText FunctionResponseType where
  toText (FunctionResponseType' x) = x

instance Prelude.Hashable FunctionResponseType

instance Prelude.NFData FunctionResponseType

instance Prelude.ToByteString FunctionResponseType

instance Prelude.ToQuery FunctionResponseType

instance Prelude.ToHeader FunctionResponseType

instance Prelude.ToJSON FunctionResponseType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON FunctionResponseType where
  parseJSON = Prelude.parseJSONText "FunctionResponseType"
