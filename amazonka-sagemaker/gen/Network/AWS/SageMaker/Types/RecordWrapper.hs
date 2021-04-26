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
-- Module      : Network.AWS.SageMaker.Types.RecordWrapper
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.RecordWrapper
  ( RecordWrapper
      ( ..,
        RecordWrapperNone,
        RecordWrapperRecordIO
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RecordWrapper = RecordWrapper'
  { fromRecordWrapper ::
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

pattern RecordWrapperNone :: RecordWrapper
pattern RecordWrapperNone = RecordWrapper' "None"

pattern RecordWrapperRecordIO :: RecordWrapper
pattern RecordWrapperRecordIO = RecordWrapper' "RecordIO"

{-# COMPLETE
  RecordWrapperNone,
  RecordWrapperRecordIO,
  RecordWrapper'
  #-}

instance Prelude.FromText RecordWrapper where
  parser = RecordWrapper' Prelude.<$> Prelude.takeText

instance Prelude.ToText RecordWrapper where
  toText (RecordWrapper' x) = x

instance Prelude.Hashable RecordWrapper

instance Prelude.NFData RecordWrapper

instance Prelude.ToByteString RecordWrapper

instance Prelude.ToQuery RecordWrapper

instance Prelude.ToHeader RecordWrapper

instance Prelude.ToJSON RecordWrapper where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON RecordWrapper where
  parseJSON = Prelude.parseJSONText "RecordWrapper"
