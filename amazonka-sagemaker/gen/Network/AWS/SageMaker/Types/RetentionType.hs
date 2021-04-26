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
-- Module      : Network.AWS.SageMaker.Types.RetentionType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.SageMaker.Types.RetentionType
  ( RetentionType
      ( ..,
        RetentionTypeDelete,
        RetentionTypeRetain
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype RetentionType = RetentionType'
  { fromRetentionType ::
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

pattern RetentionTypeDelete :: RetentionType
pattern RetentionTypeDelete = RetentionType' "Delete"

pattern RetentionTypeRetain :: RetentionType
pattern RetentionTypeRetain = RetentionType' "Retain"

{-# COMPLETE
  RetentionTypeDelete,
  RetentionTypeRetain,
  RetentionType'
  #-}

instance Prelude.FromText RetentionType where
  parser = RetentionType' Prelude.<$> Prelude.takeText

instance Prelude.ToText RetentionType where
  toText (RetentionType' x) = x

instance Prelude.Hashable RetentionType

instance Prelude.NFData RetentionType

instance Prelude.ToByteString RetentionType

instance Prelude.ToQuery RetentionType

instance Prelude.ToHeader RetentionType

instance Prelude.ToJSON RetentionType where
  toJSON = Prelude.toJSONText
