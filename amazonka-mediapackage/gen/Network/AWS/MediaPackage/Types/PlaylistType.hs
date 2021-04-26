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
-- Module      : Network.AWS.MediaPackage.Types.PlaylistType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaPackage.Types.PlaylistType
  ( PlaylistType
      ( ..,
        PlaylistTypeEVENT,
        PlaylistTypeNONE,
        PlaylistTypeVOD
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

newtype PlaylistType = PlaylistType'
  { fromPlaylistType ::
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

pattern PlaylistTypeEVENT :: PlaylistType
pattern PlaylistTypeEVENT = PlaylistType' "EVENT"

pattern PlaylistTypeNONE :: PlaylistType
pattern PlaylistTypeNONE = PlaylistType' "NONE"

pattern PlaylistTypeVOD :: PlaylistType
pattern PlaylistTypeVOD = PlaylistType' "VOD"

{-# COMPLETE
  PlaylistTypeEVENT,
  PlaylistTypeNONE,
  PlaylistTypeVOD,
  PlaylistType'
  #-}

instance Prelude.FromText PlaylistType where
  parser = PlaylistType' Prelude.<$> Prelude.takeText

instance Prelude.ToText PlaylistType where
  toText (PlaylistType' x) = x

instance Prelude.Hashable PlaylistType

instance Prelude.NFData PlaylistType

instance Prelude.ToByteString PlaylistType

instance Prelude.ToQuery PlaylistType

instance Prelude.ToHeader PlaylistType

instance Prelude.ToJSON PlaylistType where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON PlaylistType where
  parseJSON = Prelude.parseJSONText "PlaylistType"
