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
-- Module      : Network.AWS.RDS.Types.ActivityStreamMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.RDS.Types.ActivityStreamMode
  ( ActivityStreamMode
      ( ..,
        ActivityStreamModeAsync,
        ActivityStreamModeSync
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype ActivityStreamMode = ActivityStreamMode'
  { fromActivityStreamMode ::
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

pattern ActivityStreamModeAsync :: ActivityStreamMode
pattern ActivityStreamModeAsync = ActivityStreamMode' "async"

pattern ActivityStreamModeSync :: ActivityStreamMode
pattern ActivityStreamModeSync = ActivityStreamMode' "sync"

{-# COMPLETE
  ActivityStreamModeAsync,
  ActivityStreamModeSync,
  ActivityStreamMode'
  #-}

instance Prelude.FromText ActivityStreamMode where
  parser = ActivityStreamMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText ActivityStreamMode where
  toText (ActivityStreamMode' x) = x

instance Prelude.Hashable ActivityStreamMode

instance Prelude.NFData ActivityStreamMode

instance Prelude.ToByteString ActivityStreamMode

instance Prelude.ToQuery ActivityStreamMode

instance Prelude.ToHeader ActivityStreamMode

instance Prelude.FromXML ActivityStreamMode where
  parseXML = Prelude.parseXMLText "ActivityStreamMode"
