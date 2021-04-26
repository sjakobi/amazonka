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
-- Module      : Network.AWS.Firehose.Types.ProcessorType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.ProcessorType
  ( ProcessorType
      ( ..,
        ProcessorTypeLambda
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ProcessorType = ProcessorType'
  { fromProcessorType ::
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

pattern ProcessorTypeLambda :: ProcessorType
pattern ProcessorTypeLambda = ProcessorType' "Lambda"

{-# COMPLETE
  ProcessorTypeLambda,
  ProcessorType'
  #-}

instance Prelude.FromText ProcessorType where
  parser = ProcessorType' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProcessorType where
  toText (ProcessorType' x) = x

instance Prelude.Hashable ProcessorType

instance Prelude.NFData ProcessorType

instance Prelude.ToByteString ProcessorType

instance Prelude.ToQuery ProcessorType

instance Prelude.ToHeader ProcessorType

instance Prelude.ToJSON ProcessorType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ProcessorType where
  parseJSON = Prelude.parseJSONText "ProcessorType"
