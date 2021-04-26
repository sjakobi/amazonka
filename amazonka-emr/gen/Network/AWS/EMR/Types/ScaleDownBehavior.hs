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
-- Module      : Network.AWS.EMR.Types.ScaleDownBehavior
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.EMR.Types.ScaleDownBehavior
  ( ScaleDownBehavior
      ( ..,
        ScaleDownBehaviorTERMINATEATINSTANCEHOUR,
        ScaleDownBehaviorTERMINATEATTASKCOMPLETION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ScaleDownBehavior = ScaleDownBehavior'
  { fromScaleDownBehavior ::
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

pattern ScaleDownBehaviorTERMINATEATINSTANCEHOUR :: ScaleDownBehavior
pattern ScaleDownBehaviorTERMINATEATINSTANCEHOUR = ScaleDownBehavior' "TERMINATE_AT_INSTANCE_HOUR"

pattern ScaleDownBehaviorTERMINATEATTASKCOMPLETION :: ScaleDownBehavior
pattern ScaleDownBehaviorTERMINATEATTASKCOMPLETION = ScaleDownBehavior' "TERMINATE_AT_TASK_COMPLETION"

{-# COMPLETE
  ScaleDownBehaviorTERMINATEATINSTANCEHOUR,
  ScaleDownBehaviorTERMINATEATTASKCOMPLETION,
  ScaleDownBehavior'
  #-}

instance Prelude.FromText ScaleDownBehavior where
  parser = ScaleDownBehavior' Prelude.<$> Prelude.takeText

instance Prelude.ToText ScaleDownBehavior where
  toText (ScaleDownBehavior' x) = x

instance Prelude.Hashable ScaleDownBehavior

instance Prelude.NFData ScaleDownBehavior

instance Prelude.ToByteString ScaleDownBehavior

instance Prelude.ToQuery ScaleDownBehavior

instance Prelude.ToHeader ScaleDownBehavior

instance Prelude.ToJSON ScaleDownBehavior where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON ScaleDownBehavior where
  parseJSON = Prelude.parseJSONText "ScaleDownBehavior"
