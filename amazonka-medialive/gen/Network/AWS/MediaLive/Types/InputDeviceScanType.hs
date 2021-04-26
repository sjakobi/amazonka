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
-- Module      : Network.AWS.MediaLive.Types.InputDeviceScanType
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.InputDeviceScanType
  ( InputDeviceScanType
      ( ..,
        InputDeviceScanTypeINTERLACED,
        InputDeviceScanTypePROGRESSIVE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | The scan type of the video source.
newtype InputDeviceScanType = InputDeviceScanType'
  { fromInputDeviceScanType ::
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

pattern InputDeviceScanTypeINTERLACED :: InputDeviceScanType
pattern InputDeviceScanTypeINTERLACED = InputDeviceScanType' "INTERLACED"

pattern InputDeviceScanTypePROGRESSIVE :: InputDeviceScanType
pattern InputDeviceScanTypePROGRESSIVE = InputDeviceScanType' "PROGRESSIVE"

{-# COMPLETE
  InputDeviceScanTypeINTERLACED,
  InputDeviceScanTypePROGRESSIVE,
  InputDeviceScanType'
  #-}

instance Prelude.FromText InputDeviceScanType where
  parser = InputDeviceScanType' Prelude.<$> Prelude.takeText

instance Prelude.ToText InputDeviceScanType where
  toText (InputDeviceScanType' x) = x

instance Prelude.Hashable InputDeviceScanType

instance Prelude.NFData InputDeviceScanType

instance Prelude.ToByteString InputDeviceScanType

instance Prelude.ToQuery InputDeviceScanType

instance Prelude.ToHeader InputDeviceScanType

instance Prelude.FromJSON InputDeviceScanType where
  parseJSON = Prelude.parseJSONText "InputDeviceScanType"
