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
-- Module      : Network.AWS.Glue.Types.WorkerType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.WorkerType
  ( WorkerType
      ( ..,
        WorkerTypeG_1X,
        WorkerTypeG_2X,
        WorkerTypeStandard
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype WorkerType = WorkerType'
  { fromWorkerType ::
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

pattern WorkerTypeG_1X :: WorkerType
pattern WorkerTypeG_1X = WorkerType' "G.1X"

pattern WorkerTypeG_2X :: WorkerType
pattern WorkerTypeG_2X = WorkerType' "G.2X"

pattern WorkerTypeStandard :: WorkerType
pattern WorkerTypeStandard = WorkerType' "Standard"

{-# COMPLETE
  WorkerTypeG_1X,
  WorkerTypeG_2X,
  WorkerTypeStandard,
  WorkerType'
  #-}

instance Prelude.FromText WorkerType where
  parser = WorkerType' Prelude.<$> Prelude.takeText

instance Prelude.ToText WorkerType where
  toText (WorkerType' x) = x

instance Prelude.Hashable WorkerType

instance Prelude.NFData WorkerType

instance Prelude.ToByteString WorkerType

instance Prelude.ToQuery WorkerType

instance Prelude.ToHeader WorkerType

instance Prelude.ToJSON WorkerType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON WorkerType where
  parseJSON = Prelude.parseJSONText "WorkerType"
