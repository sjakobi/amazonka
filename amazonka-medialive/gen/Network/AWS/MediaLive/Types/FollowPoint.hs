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
-- Module      : Network.AWS.MediaLive.Types.FollowPoint
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.FollowPoint
  ( FollowPoint
      ( ..,
        FollowPointEND,
        FollowPointSTART
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Follow reference point.
newtype FollowPoint = FollowPoint'
  { fromFollowPoint ::
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

pattern FollowPointEND :: FollowPoint
pattern FollowPointEND = FollowPoint' "END"

pattern FollowPointSTART :: FollowPoint
pattern FollowPointSTART = FollowPoint' "START"

{-# COMPLETE
  FollowPointEND,
  FollowPointSTART,
  FollowPoint'
  #-}

instance Prelude.FromText FollowPoint where
  parser = FollowPoint' Prelude.<$> Prelude.takeText

instance Prelude.ToText FollowPoint where
  toText (FollowPoint' x) = x

instance Prelude.Hashable FollowPoint

instance Prelude.NFData FollowPoint

instance Prelude.ToByteString FollowPoint

instance Prelude.ToQuery FollowPoint

instance Prelude.ToHeader FollowPoint

instance Prelude.ToJSON FollowPoint where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON FollowPoint where
  parseJSON = Prelude.parseJSONText "FollowPoint"
