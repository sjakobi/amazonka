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
-- Module      : Network.AWS.SageMaker.Types.BatchStrategy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.BatchStrategy
  ( BatchStrategy
      ( ..,
        BatchStrategyMultiRecord,
        BatchStrategySingleRecord
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype BatchStrategy = BatchStrategy'
  { fromBatchStrategy ::
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

pattern BatchStrategyMultiRecord :: BatchStrategy
pattern BatchStrategyMultiRecord = BatchStrategy' "MultiRecord"

pattern BatchStrategySingleRecord :: BatchStrategy
pattern BatchStrategySingleRecord = BatchStrategy' "SingleRecord"

{-# COMPLETE
  BatchStrategyMultiRecord,
  BatchStrategySingleRecord,
  BatchStrategy'
  #-}

instance Prelude.FromText BatchStrategy where
  parser = BatchStrategy' Prelude.<$> Prelude.takeText

instance Prelude.ToText BatchStrategy where
  toText (BatchStrategy' x) = x

instance Prelude.Hashable BatchStrategy

instance Prelude.NFData BatchStrategy

instance Prelude.ToByteString BatchStrategy

instance Prelude.ToQuery BatchStrategy

instance Prelude.ToHeader BatchStrategy

instance Prelude.ToJSON BatchStrategy where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON BatchStrategy where
  parseJSON = Prelude.parseJSONText "BatchStrategy"
