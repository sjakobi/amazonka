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
-- Module      : Network.AWS.MediaConvert.Types.MovPaddingControl
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.MovPaddingControl
  ( MovPaddingControl
      ( ..,
        MovPaddingControlNONE,
        MovPaddingControlOMNEON
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | To make this output compatible with Omenon, keep the default value,
-- OMNEON. Unless you need Omneon compatibility, set this value to NONE.
-- When you keep the default value, OMNEON, MediaConvert increases the
-- length of the edit list atom. This might cause file rejections when a
-- recipient of the output file doesn\'t expct this extra padding.
newtype MovPaddingControl = MovPaddingControl'
  { fromMovPaddingControl ::
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

pattern MovPaddingControlNONE :: MovPaddingControl
pattern MovPaddingControlNONE = MovPaddingControl' "NONE"

pattern MovPaddingControlOMNEON :: MovPaddingControl
pattern MovPaddingControlOMNEON = MovPaddingControl' "OMNEON"

{-# COMPLETE
  MovPaddingControlNONE,
  MovPaddingControlOMNEON,
  MovPaddingControl'
  #-}

instance Prelude.FromText MovPaddingControl where
  parser = MovPaddingControl' Prelude.<$> Prelude.takeText

instance Prelude.ToText MovPaddingControl where
  toText (MovPaddingControl' x) = x

instance Prelude.Hashable MovPaddingControl

instance Prelude.NFData MovPaddingControl

instance Prelude.ToByteString MovPaddingControl

instance Prelude.ToQuery MovPaddingControl

instance Prelude.ToHeader MovPaddingControl

instance Prelude.ToJSON MovPaddingControl where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON MovPaddingControl where
  parseJSON = Prelude.parseJSONText "MovPaddingControl"
