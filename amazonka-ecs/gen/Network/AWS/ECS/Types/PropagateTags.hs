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
-- Module      : Network.AWS.ECS.Types.PropagateTags
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.ECS.Types.PropagateTags
  ( PropagateTags
      ( ..,
        PropagateTagsSERVICE,
        PropagateTagsTASKDEFINITION
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PropagateTags = PropagateTags'
  { fromPropagateTags ::
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

pattern PropagateTagsSERVICE :: PropagateTags
pattern PropagateTagsSERVICE = PropagateTags' "SERVICE"

pattern PropagateTagsTASKDEFINITION :: PropagateTags
pattern PropagateTagsTASKDEFINITION = PropagateTags' "TASK_DEFINITION"

{-# COMPLETE
  PropagateTagsSERVICE,
  PropagateTagsTASKDEFINITION,
  PropagateTags'
  #-}

instance Prelude.FromText PropagateTags where
  parser = PropagateTags' Prelude.<$> Prelude.takeText

instance Prelude.ToText PropagateTags where
  toText (PropagateTags' x) = x

instance Prelude.Hashable PropagateTags

instance Prelude.NFData PropagateTags

instance Prelude.ToByteString PropagateTags

instance Prelude.ToQuery PropagateTags

instance Prelude.ToHeader PropagateTags

instance Prelude.ToJSON PropagateTags where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON PropagateTags where
  parseJSON = Prelude.parseJSONText "PropagateTags"
