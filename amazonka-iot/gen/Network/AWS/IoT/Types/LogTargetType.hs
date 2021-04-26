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
-- Module      : Network.AWS.IoT.Types.LogTargetType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.IoT.Types.LogTargetType
  ( LogTargetType
      ( ..,
        LogTargetTypeDEFAULT,
        LogTargetTypeTHINGGROUP
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype LogTargetType = LogTargetType'
  { fromLogTargetType ::
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

pattern LogTargetTypeDEFAULT :: LogTargetType
pattern LogTargetTypeDEFAULT = LogTargetType' "DEFAULT"

pattern LogTargetTypeTHINGGROUP :: LogTargetType
pattern LogTargetTypeTHINGGROUP = LogTargetType' "THING_GROUP"

{-# COMPLETE
  LogTargetTypeDEFAULT,
  LogTargetTypeTHINGGROUP,
  LogTargetType'
  #-}

instance Prelude.FromText LogTargetType where
  parser = LogTargetType' Prelude.<$> Prelude.takeText

instance Prelude.ToText LogTargetType where
  toText (LogTargetType' x) = x

instance Prelude.Hashable LogTargetType

instance Prelude.NFData LogTargetType

instance Prelude.ToByteString LogTargetType

instance Prelude.ToQuery LogTargetType

instance Prelude.ToHeader LogTargetType

instance Prelude.ToJSON LogTargetType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON LogTargetType where
  parseJSON = Prelude.parseJSONText "LogTargetType"
