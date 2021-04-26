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
-- Module      : Network.AWS.Config.Types.AggregatedSourceStatusType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Config.Types.AggregatedSourceStatusType
  ( AggregatedSourceStatusType
      ( ..,
        AggregatedSourceStatusTypeFAILED,
        AggregatedSourceStatusTypeOUTDATED,
        AggregatedSourceStatusTypeSUCCEEDED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype AggregatedSourceStatusType = AggregatedSourceStatusType'
  { fromAggregatedSourceStatusType ::
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

pattern AggregatedSourceStatusTypeFAILED :: AggregatedSourceStatusType
pattern AggregatedSourceStatusTypeFAILED = AggregatedSourceStatusType' "FAILED"

pattern AggregatedSourceStatusTypeOUTDATED :: AggregatedSourceStatusType
pattern AggregatedSourceStatusTypeOUTDATED = AggregatedSourceStatusType' "OUTDATED"

pattern AggregatedSourceStatusTypeSUCCEEDED :: AggregatedSourceStatusType
pattern AggregatedSourceStatusTypeSUCCEEDED = AggregatedSourceStatusType' "SUCCEEDED"

{-# COMPLETE
  AggregatedSourceStatusTypeFAILED,
  AggregatedSourceStatusTypeOUTDATED,
  AggregatedSourceStatusTypeSUCCEEDED,
  AggregatedSourceStatusType'
  #-}

instance Prelude.FromText AggregatedSourceStatusType where
  parser = AggregatedSourceStatusType' Prelude.<$> Prelude.takeText

instance Prelude.ToText AggregatedSourceStatusType where
  toText (AggregatedSourceStatusType' x) = x

instance Prelude.Hashable AggregatedSourceStatusType

instance Prelude.NFData AggregatedSourceStatusType

instance Prelude.ToByteString AggregatedSourceStatusType

instance Prelude.ToQuery AggregatedSourceStatusType

instance Prelude.ToHeader AggregatedSourceStatusType

instance Prelude.ToJSON AggregatedSourceStatusType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AggregatedSourceStatusType where
  parseJSON = Prelude.parseJSONText "AggregatedSourceStatusType"
