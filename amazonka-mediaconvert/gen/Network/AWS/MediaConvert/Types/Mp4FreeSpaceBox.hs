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
-- Module      : Network.AWS.MediaConvert.Types.Mp4FreeSpaceBox
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Mp4FreeSpaceBox
  ( Mp4FreeSpaceBox
      ( ..,
        Mp4FreeSpaceBoxEXCLUDE,
        Mp4FreeSpaceBoxINCLUDE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Inserts a free-space box immediately after the moov box.
newtype Mp4FreeSpaceBox = Mp4FreeSpaceBox'
  { fromMp4FreeSpaceBox ::
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

pattern Mp4FreeSpaceBoxEXCLUDE :: Mp4FreeSpaceBox
pattern Mp4FreeSpaceBoxEXCLUDE = Mp4FreeSpaceBox' "EXCLUDE"

pattern Mp4FreeSpaceBoxINCLUDE :: Mp4FreeSpaceBox
pattern Mp4FreeSpaceBoxINCLUDE = Mp4FreeSpaceBox' "INCLUDE"

{-# COMPLETE
  Mp4FreeSpaceBoxEXCLUDE,
  Mp4FreeSpaceBoxINCLUDE,
  Mp4FreeSpaceBox'
  #-}

instance Prelude.FromText Mp4FreeSpaceBox where
  parser = Mp4FreeSpaceBox' Prelude.<$> Prelude.takeText

instance Prelude.ToText Mp4FreeSpaceBox where
  toText (Mp4FreeSpaceBox' x) = x

instance Prelude.Hashable Mp4FreeSpaceBox

instance Prelude.NFData Mp4FreeSpaceBox

instance Prelude.ToByteString Mp4FreeSpaceBox

instance Prelude.ToQuery Mp4FreeSpaceBox

instance Prelude.ToHeader Mp4FreeSpaceBox

instance Prelude.ToJSON Mp4FreeSpaceBox where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Mp4FreeSpaceBox where
  parseJSON = Prelude.parseJSONText "Mp4FreeSpaceBox"
