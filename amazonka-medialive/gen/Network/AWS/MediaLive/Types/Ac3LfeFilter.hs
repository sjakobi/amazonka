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
-- Module      : Network.AWS.MediaLive.Types.Ac3LfeFilter
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.Ac3LfeFilter
  ( Ac3LfeFilter
      ( ..,
        Ac3LfeFilterDISABLED,
        Ac3LfeFilterENABLED
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Ac3 Lfe Filter
newtype Ac3LfeFilter = Ac3LfeFilter'
  { fromAc3LfeFilter ::
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

pattern Ac3LfeFilterDISABLED :: Ac3LfeFilter
pattern Ac3LfeFilterDISABLED = Ac3LfeFilter' "DISABLED"

pattern Ac3LfeFilterENABLED :: Ac3LfeFilter
pattern Ac3LfeFilterENABLED = Ac3LfeFilter' "ENABLED"

{-# COMPLETE
  Ac3LfeFilterDISABLED,
  Ac3LfeFilterENABLED,
  Ac3LfeFilter'
  #-}

instance Prelude.FromText Ac3LfeFilter where
  parser = Ac3LfeFilter' Prelude.<$> Prelude.takeText

instance Prelude.ToText Ac3LfeFilter where
  toText (Ac3LfeFilter' x) = x

instance Prelude.Hashable Ac3LfeFilter

instance Prelude.NFData Ac3LfeFilter

instance Prelude.ToByteString Ac3LfeFilter

instance Prelude.ToQuery Ac3LfeFilter

instance Prelude.ToHeader Ac3LfeFilter

instance Prelude.ToJSON Ac3LfeFilter where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON Ac3LfeFilter where
  parseJSON = Prelude.parseJSONText "Ac3LfeFilter"
