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
-- Module      : Network.AWS.CodeBuild.Types.RetryBuildBatchType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodeBuild.Types.RetryBuildBatchType
  ( RetryBuildBatchType
      ( ..,
        RetryBuildBatchTypeRETRYALLBUILDS,
        RetryBuildBatchTypeRETRYFAILEDBUILDS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RetryBuildBatchType = RetryBuildBatchType'
  { fromRetryBuildBatchType ::
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

pattern RetryBuildBatchTypeRETRYALLBUILDS :: RetryBuildBatchType
pattern RetryBuildBatchTypeRETRYALLBUILDS = RetryBuildBatchType' "RETRY_ALL_BUILDS"

pattern RetryBuildBatchTypeRETRYFAILEDBUILDS :: RetryBuildBatchType
pattern RetryBuildBatchTypeRETRYFAILEDBUILDS = RetryBuildBatchType' "RETRY_FAILED_BUILDS"

{-# COMPLETE
  RetryBuildBatchTypeRETRYALLBUILDS,
  RetryBuildBatchTypeRETRYFAILEDBUILDS,
  RetryBuildBatchType'
  #-}

instance Prelude.FromText RetryBuildBatchType where
  parser = RetryBuildBatchType' Prelude.<$> Prelude.takeText

instance Prelude.ToText RetryBuildBatchType where
  toText (RetryBuildBatchType' x) = x

instance Prelude.Hashable RetryBuildBatchType

instance Prelude.NFData RetryBuildBatchType

instance Prelude.ToByteString RetryBuildBatchType

instance Prelude.ToQuery RetryBuildBatchType

instance Prelude.ToHeader RetryBuildBatchType

instance Prelude.ToJSON RetryBuildBatchType where
  toJSON = Prelude.toJSONText
