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
-- Module      : Network.AWS.MediaLive.Types.Scte20Convert608To708
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Scte20Convert608To708
  ( Scte20Convert608To708
      ( ..,
        Scte20Convert608To708DISABLED,
        Scte20Convert608To708UPCONVERT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Scte20 Convert608 To708
newtype Scte20Convert608To708 = Scte20Convert608To708'
  { fromScte20Convert608To708 ::
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

pattern Scte20Convert608To708DISABLED :: Scte20Convert608To708
pattern Scte20Convert608To708DISABLED = Scte20Convert608To708' "DISABLED"

pattern Scte20Convert608To708UPCONVERT :: Scte20Convert608To708
pattern Scte20Convert608To708UPCONVERT = Scte20Convert608To708' "UPCONVERT"

{-# COMPLETE
  Scte20Convert608To708DISABLED,
  Scte20Convert608To708UPCONVERT,
  Scte20Convert608To708'
  #-}

instance Prelude.FromText Scte20Convert608To708 where
  parser = Scte20Convert608To708' Prelude.<$> Prelude.takeText

instance Prelude.ToText Scte20Convert608To708 where
  toText (Scte20Convert608To708' x) = x

instance Prelude.Hashable Scte20Convert608To708

instance Prelude.NFData Scte20Convert608To708

instance Prelude.ToByteString Scte20Convert608To708

instance Prelude.ToQuery Scte20Convert608To708

instance Prelude.ToHeader Scte20Convert608To708

instance Prelude.ToJSON Scte20Convert608To708 where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Scte20Convert608To708 where
  parseJSON = Prelude.parseJSONText "Scte20Convert608To708"
