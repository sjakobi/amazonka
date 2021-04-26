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
-- Module      : Network.AWS.Glue.Types.LogicalOperator
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Glue.Types.LogicalOperator
  ( LogicalOperator
      ( ..,
        LogicalOperatorEQUALS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LogicalOperator = LogicalOperator'
  { fromLogicalOperator ::
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

pattern LogicalOperatorEQUALS :: LogicalOperator
pattern LogicalOperatorEQUALS = LogicalOperator' "EQUALS"

{-# COMPLETE
  LogicalOperatorEQUALS,
  LogicalOperator'
  #-}

instance Prelude.FromText LogicalOperator where
  parser = LogicalOperator' Prelude.<$> Prelude.takeText

instance Prelude.ToText LogicalOperator where
  toText (LogicalOperator' x) = x

instance Prelude.Hashable LogicalOperator

instance Prelude.NFData LogicalOperator

instance Prelude.ToByteString LogicalOperator

instance Prelude.ToQuery LogicalOperator

instance Prelude.ToHeader LogicalOperator

instance Prelude.ToJSON LogicalOperator where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON LogicalOperator where
  parseJSON = Prelude.parseJSONText "LogicalOperator"
