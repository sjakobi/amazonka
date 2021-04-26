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
-- Module      : Network.AWS.ECS.Types.TaskField
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.TaskField
  ( TaskField
      ( ..,
        TaskFieldTAGS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TaskField = TaskField'
  { fromTaskField ::
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

pattern TaskFieldTAGS :: TaskField
pattern TaskFieldTAGS = TaskField' "TAGS"

{-# COMPLETE
  TaskFieldTAGS,
  TaskField'
  #-}

instance Prelude.FromText TaskField where
  parser = TaskField' Prelude.<$> Prelude.takeText

instance Prelude.ToText TaskField where
  toText (TaskField' x) = x

instance Prelude.Hashable TaskField

instance Prelude.NFData TaskField

instance Prelude.ToByteString TaskField

instance Prelude.ToQuery TaskField

instance Prelude.ToHeader TaskField

instance Prelude.ToJSON TaskField where
  toJSON = Prelude.toJSONText
