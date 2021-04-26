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
-- Module      : Network.AWS.Firehose.Types.ProcessorParameterName
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Firehose.Types.ProcessorParameterName
  ( ProcessorParameterName
      ( ..,
        ProcessorParameterNameBufferIntervalInSeconds,
        ProcessorParameterNameBufferSizeInMBs,
        ProcessorParameterNameLambdaArn,
        ProcessorParameterNameNumberOfRetries,
        ProcessorParameterNameRoleArn
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ProcessorParameterName = ProcessorParameterName'
  { fromProcessorParameterName ::
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

pattern ProcessorParameterNameBufferIntervalInSeconds :: ProcessorParameterName
pattern ProcessorParameterNameBufferIntervalInSeconds = ProcessorParameterName' "BufferIntervalInSeconds"

pattern ProcessorParameterNameBufferSizeInMBs :: ProcessorParameterName
pattern ProcessorParameterNameBufferSizeInMBs = ProcessorParameterName' "BufferSizeInMBs"

pattern ProcessorParameterNameLambdaArn :: ProcessorParameterName
pattern ProcessorParameterNameLambdaArn = ProcessorParameterName' "LambdaArn"

pattern ProcessorParameterNameNumberOfRetries :: ProcessorParameterName
pattern ProcessorParameterNameNumberOfRetries = ProcessorParameterName' "NumberOfRetries"

pattern ProcessorParameterNameRoleArn :: ProcessorParameterName
pattern ProcessorParameterNameRoleArn = ProcessorParameterName' "RoleArn"

{-# COMPLETE
  ProcessorParameterNameBufferIntervalInSeconds,
  ProcessorParameterNameBufferSizeInMBs,
  ProcessorParameterNameLambdaArn,
  ProcessorParameterNameNumberOfRetries,
  ProcessorParameterNameRoleArn,
  ProcessorParameterName'
  #-}

instance Prelude.FromText ProcessorParameterName where
  parser = ProcessorParameterName' Prelude.<$> Prelude.takeText

instance Prelude.ToText ProcessorParameterName where
  toText (ProcessorParameterName' x) = x

instance Prelude.Hashable ProcessorParameterName

instance Prelude.NFData ProcessorParameterName

instance Prelude.ToByteString ProcessorParameterName

instance Prelude.ToQuery ProcessorParameterName

instance Prelude.ToHeader ProcessorParameterName

instance Prelude.ToJSON ProcessorParameterName where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ProcessorParameterName where
  parseJSON = Prelude.parseJSONText "ProcessorParameterName"
