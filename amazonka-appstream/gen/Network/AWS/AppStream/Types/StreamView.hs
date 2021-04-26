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
-- Module      : Network.AWS.AppStream.Types.StreamView
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.AppStream.Types.StreamView
  ( StreamView
      ( ..,
        StreamViewAPP,
        StreamViewDESKTOP
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype StreamView = StreamView'
  { fromStreamView ::
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

pattern StreamViewAPP :: StreamView
pattern StreamViewAPP = StreamView' "APP"

pattern StreamViewDESKTOP :: StreamView
pattern StreamViewDESKTOP = StreamView' "DESKTOP"

{-# COMPLETE
  StreamViewAPP,
  StreamViewDESKTOP,
  StreamView'
  #-}

instance Prelude.FromText StreamView where
  parser = StreamView' Prelude.<$> Prelude.takeText

instance Prelude.ToText StreamView where
  toText (StreamView' x) = x

instance Prelude.Hashable StreamView

instance Prelude.NFData StreamView

instance Prelude.ToByteString StreamView

instance Prelude.ToQuery StreamView

instance Prelude.ToHeader StreamView

instance Prelude.ToJSON StreamView where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON StreamView where
  parseJSON = Prelude.parseJSONText "StreamView"
