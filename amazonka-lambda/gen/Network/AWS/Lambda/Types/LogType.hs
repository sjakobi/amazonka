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
-- Module      : Network.AWS.Lambda.Types.LogType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.Lambda.Types.LogType
  ( LogType
      ( ..,
        LogTypeNone,
        LogTypeTail
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LogType = LogType'
  { fromLogType ::
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

pattern LogTypeNone :: LogType
pattern LogTypeNone = LogType' "None"

pattern LogTypeTail :: LogType
pattern LogTypeTail = LogType' "Tail"

{-# COMPLETE
  LogTypeNone,
  LogTypeTail,
  LogType'
  #-}

instance Prelude.FromText LogType where
  parser = LogType' Prelude.<$> Prelude.takeText

instance Prelude.ToText LogType where
  toText (LogType' x) = x

instance Prelude.Hashable LogType

instance Prelude.NFData LogType

instance Prelude.ToByteString LogType

instance Prelude.ToQuery LogType

instance Prelude.ToHeader LogType

instance Prelude.ToJSON LogType where
  toJSON = Prelude.toJSONText
