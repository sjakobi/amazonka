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
-- Module      : Network.AWS.ECS.Types.TaskDefinitionField
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.TaskDefinitionField
  ( TaskDefinitionField
      ( ..,
        TaskDefinitionFieldTAGS
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype TaskDefinitionField = TaskDefinitionField'
  { fromTaskDefinitionField ::
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

pattern TaskDefinitionFieldTAGS :: TaskDefinitionField
pattern TaskDefinitionFieldTAGS = TaskDefinitionField' "TAGS"

{-# COMPLETE
  TaskDefinitionFieldTAGS,
  TaskDefinitionField'
  #-}

instance Prelude.FromText TaskDefinitionField where
  parser = TaskDefinitionField' Prelude.<$> Prelude.takeText

instance Prelude.ToText TaskDefinitionField where
  toText (TaskDefinitionField' x) = x

instance Prelude.Hashable TaskDefinitionField

instance Prelude.NFData TaskDefinitionField

instance Prelude.ToByteString TaskDefinitionField

instance Prelude.ToQuery TaskDefinitionField

instance Prelude.ToHeader TaskDefinitionField

instance Prelude.ToJSON TaskDefinitionField where
  toJSON = Prelude.toJSONText
