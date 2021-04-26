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
-- Module      : Network.AWS.MediaLive.Types.Eac3DcFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Eac3DcFilter
  ( Eac3DcFilter
      ( ..,
        Eac3DcFilterDISABLED,
        Eac3DcFilterENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Eac3 Dc Filter
newtype Eac3DcFilter = Eac3DcFilter'
  { fromEac3DcFilter ::
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

pattern Eac3DcFilterDISABLED :: Eac3DcFilter
pattern Eac3DcFilterDISABLED = Eac3DcFilter' "DISABLED"

pattern Eac3DcFilterENABLED :: Eac3DcFilter
pattern Eac3DcFilterENABLED = Eac3DcFilter' "ENABLED"

{-# COMPLETE
  Eac3DcFilterDISABLED,
  Eac3DcFilterENABLED,
  Eac3DcFilter'
  #-}

instance Prelude.FromText Eac3DcFilter where
  parser = Eac3DcFilter' Prelude.<$> Prelude.takeText

instance Prelude.ToText Eac3DcFilter where
  toText (Eac3DcFilter' x) = x

instance Prelude.Hashable Eac3DcFilter

instance Prelude.NFData Eac3DcFilter

instance Prelude.ToByteString Eac3DcFilter

instance Prelude.ToQuery Eac3DcFilter

instance Prelude.ToHeader Eac3DcFilter

instance Prelude.ToJSON Eac3DcFilter where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Eac3DcFilter where
  parseJSON = Prelude.parseJSONText "Eac3DcFilter"
