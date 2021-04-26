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
-- Module      : Network.AWS.ECS.Types.TaskSetField
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.TaskSetField
  ( TaskSetField
      ( ..,
        TaskSetFieldTAGS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TaskSetField = TaskSetField'
  { fromTaskSetField ::
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

pattern TaskSetFieldTAGS :: TaskSetField
pattern TaskSetFieldTAGS = TaskSetField' "TAGS"

{-# COMPLETE
  TaskSetFieldTAGS,
  TaskSetField'
  #-}

instance Prelude.FromText TaskSetField where
  parser = TaskSetField' Prelude.<$> Prelude.takeText

instance Prelude.ToText TaskSetField where
  toText (TaskSetField' x) = x

instance Prelude.Hashable TaskSetField

instance Prelude.NFData TaskSetField

instance Prelude.ToByteString TaskSetField

instance Prelude.ToQuery TaskSetField

instance Prelude.ToHeader TaskSetField

instance Prelude.ToJSON TaskSetField where
  toJSON = Prelude.toJSONText
