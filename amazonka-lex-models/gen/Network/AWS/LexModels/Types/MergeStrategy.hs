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
-- Module      : Network.AWS.LexModels.Types.MergeStrategy
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.LexModels.Types.MergeStrategy
  ( MergeStrategy
      ( ..,
        MergeStrategyFAILONCONFLICT,
        MergeStrategyOVERWRITELATEST
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype MergeStrategy = MergeStrategy'
  { fromMergeStrategy ::
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

pattern MergeStrategyFAILONCONFLICT :: MergeStrategy
pattern MergeStrategyFAILONCONFLICT = MergeStrategy' "FAIL_ON_CONFLICT"

pattern MergeStrategyOVERWRITELATEST :: MergeStrategy
pattern MergeStrategyOVERWRITELATEST = MergeStrategy' "OVERWRITE_LATEST"

{-# COMPLETE
  MergeStrategyFAILONCONFLICT,
  MergeStrategyOVERWRITELATEST,
  MergeStrategy'
  #-}

instance Prelude.FromText MergeStrategy where
  parser = MergeStrategy' Prelude.<$> Prelude.takeText

instance Prelude.ToText MergeStrategy where
  toText (MergeStrategy' x) = x

instance Prelude.Hashable MergeStrategy

instance Prelude.NFData MergeStrategy

instance Prelude.ToByteString MergeStrategy

instance Prelude.ToQuery MergeStrategy

instance Prelude.ToHeader MergeStrategy

instance Prelude.ToJSON MergeStrategy where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MergeStrategy where
  parseJSON = Prelude.parseJSONText "MergeStrategy"
