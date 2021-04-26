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
-- Module      : Network.AWS.CodePipeline.Types.ExecutorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.CodePipeline.Types.ExecutorType
  ( ExecutorType
      ( ..,
        ExecutorTypeJobWorker,
        ExecutorTypeLambda
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ExecutorType = ExecutorType'
  { fromExecutorType ::
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

pattern ExecutorTypeJobWorker :: ExecutorType
pattern ExecutorTypeJobWorker = ExecutorType' "JobWorker"

pattern ExecutorTypeLambda :: ExecutorType
pattern ExecutorTypeLambda = ExecutorType' "Lambda"

{-# COMPLETE
  ExecutorTypeJobWorker,
  ExecutorTypeLambda,
  ExecutorType'
  #-}

instance Prelude.FromText ExecutorType where
  parser = ExecutorType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ExecutorType where
  toText (ExecutorType' x) = x

instance Prelude.Hashable ExecutorType

instance Prelude.NFData ExecutorType

instance Prelude.ToByteString ExecutorType

instance Prelude.ToQuery ExecutorType

instance Prelude.ToHeader ExecutorType

instance Prelude.ToJSON ExecutorType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ExecutorType where
  parseJSON = Prelude.parseJSONText "ExecutorType"
