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
-- Module      : Network.AWS.EMR.Types.ExecutionEngineType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.ExecutionEngineType
  ( ExecutionEngineType
      ( ..,
        ExecutionEngineTypeEMR
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ExecutionEngineType = ExecutionEngineType'
  { fromExecutionEngineType ::
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

pattern ExecutionEngineTypeEMR :: ExecutionEngineType
pattern ExecutionEngineTypeEMR = ExecutionEngineType' "EMR"

{-# COMPLETE
  ExecutionEngineTypeEMR,
  ExecutionEngineType'
  #-}

instance Prelude.FromText ExecutionEngineType where
  parser = ExecutionEngineType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ExecutionEngineType where
  toText (ExecutionEngineType' x) = x

instance Prelude.Hashable ExecutionEngineType

instance Prelude.NFData ExecutionEngineType

instance Prelude.ToByteString ExecutionEngineType

instance Prelude.ToQuery ExecutionEngineType

instance Prelude.ToHeader ExecutionEngineType

instance Prelude.ToJSON ExecutionEngineType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ExecutionEngineType where
  parseJSON = Prelude.parseJSONText "ExecutionEngineType"
