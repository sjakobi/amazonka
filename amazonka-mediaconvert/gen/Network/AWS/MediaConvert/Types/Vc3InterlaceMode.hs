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
-- Module      : Network.AWS.MediaConvert.Types.Vc3InterlaceMode
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaConvert.Types.Vc3InterlaceMode
  ( Vc3InterlaceMode
      ( ..,
        Vc3InterlaceModeINTERLACED,
        Vc3InterlaceModePROGRESSIVE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Optional. Choose the scan line type for this output. If you don\'t
-- specify a value, MediaConvert will create a progressive output.
newtype Vc3InterlaceMode = Vc3InterlaceMode'
  { fromVc3InterlaceMode ::
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

pattern Vc3InterlaceModeINTERLACED :: Vc3InterlaceMode
pattern Vc3InterlaceModeINTERLACED = Vc3InterlaceMode' "INTERLACED"

pattern Vc3InterlaceModePROGRESSIVE :: Vc3InterlaceMode
pattern Vc3InterlaceModePROGRESSIVE = Vc3InterlaceMode' "PROGRESSIVE"

{-# COMPLETE
  Vc3InterlaceModeINTERLACED,
  Vc3InterlaceModePROGRESSIVE,
  Vc3InterlaceMode'
  #-}

instance Prelude.FromText Vc3InterlaceMode where
  parser = Vc3InterlaceMode' Prelude.<$> Prelude.takeText

instance Prelude.ToText Vc3InterlaceMode where
  toText (Vc3InterlaceMode' x) = x

instance Prelude.Hashable Vc3InterlaceMode

instance Prelude.NFData Vc3InterlaceMode

instance Prelude.ToByteString Vc3InterlaceMode

instance Prelude.ToQuery Vc3InterlaceMode

instance Prelude.ToHeader Vc3InterlaceMode

instance Prelude.ToJSON Vc3InterlaceMode where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Vc3InterlaceMode where
  parseJSON = Prelude.parseJSONText "Vc3InterlaceMode"
