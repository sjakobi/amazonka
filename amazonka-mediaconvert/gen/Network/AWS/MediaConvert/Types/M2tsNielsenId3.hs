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
-- Module      : Network.AWS.MediaConvert.Types.M2tsNielsenId3
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.M2tsNielsenId3
  ( M2tsNielsenId3
      ( ..,
        M2tsNielsenId3INSERT,
        M2tsNielsenId3NONE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | If INSERT, Nielsen inaudible tones for media tracking will be detected
-- in the input audio and an equivalent ID3 tag will be inserted in the
-- output.
newtype M2tsNielsenId3 = M2tsNielsenId3'
  { fromM2tsNielsenId3 ::
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

pattern M2tsNielsenId3INSERT :: M2tsNielsenId3
pattern M2tsNielsenId3INSERT = M2tsNielsenId3' "INSERT"

pattern M2tsNielsenId3NONE :: M2tsNielsenId3
pattern M2tsNielsenId3NONE = M2tsNielsenId3' "NONE"

{-# COMPLETE
  M2tsNielsenId3INSERT,
  M2tsNielsenId3NONE,
  M2tsNielsenId3'
  #-}

instance Prelude.FromText M2tsNielsenId3 where
  parser = M2tsNielsenId3' Prelude.<$> Prelude.takeText

instance Prelude.ToText M2tsNielsenId3 where
  toText (M2tsNielsenId3' x) = x

instance Prelude.Hashable M2tsNielsenId3

instance Prelude.NFData M2tsNielsenId3

instance Prelude.ToByteString M2tsNielsenId3

instance Prelude.ToQuery M2tsNielsenId3

instance Prelude.ToHeader M2tsNielsenId3

instance Prelude.ToJSON M2tsNielsenId3 where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON M2tsNielsenId3 where
  parseJSON = Prelude.parseJSONText "M2tsNielsenId3"
