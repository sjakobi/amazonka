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
-- Module      : Network.AWS.SageMaker.Types.SplitType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.SplitType
  ( SplitType
      ( ..,
        SplitTypeLine,
        SplitTypeNone,
        SplitTypeRecordIO,
        SplitTypeTFRecord
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype SplitType = SplitType'
  { fromSplitType ::
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

pattern SplitTypeLine :: SplitType
pattern SplitTypeLine = SplitType' "Line"

pattern SplitTypeNone :: SplitType
pattern SplitTypeNone = SplitType' "None"

pattern SplitTypeRecordIO :: SplitType
pattern SplitTypeRecordIO = SplitType' "RecordIO"

pattern SplitTypeTFRecord :: SplitType
pattern SplitTypeTFRecord = SplitType' "TFRecord"

{-# COMPLETE
  SplitTypeLine,
  SplitTypeNone,
  SplitTypeRecordIO,
  SplitTypeTFRecord,
  SplitType'
  #-}

instance Prelude.FromText SplitType where
  parser = SplitType' Prelude.<$> Prelude.takeText

instance Prelude.ToText SplitType where
  toText (SplitType' x) = x

instance Prelude.Hashable SplitType

instance Prelude.NFData SplitType

instance Prelude.ToByteString SplitType

instance Prelude.ToQuery SplitType

instance Prelude.ToHeader SplitType

instance Prelude.ToJSON SplitType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON SplitType where
  parseJSON = Prelude.parseJSONText "SplitType"
