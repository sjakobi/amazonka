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
-- Module      : Network.AWS.MediaLive.Types.BurnInBackgroundColor
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.BurnInBackgroundColor
  ( BurnInBackgroundColor
      ( ..,
        BurnInBackgroundColorBLACK,
        BurnInBackgroundColorNONE,
        BurnInBackgroundColorWHITE
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Burn In Background Color
newtype BurnInBackgroundColor = BurnInBackgroundColor'
  { fromBurnInBackgroundColor ::
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

pattern BurnInBackgroundColorBLACK :: BurnInBackgroundColor
pattern BurnInBackgroundColorBLACK = BurnInBackgroundColor' "BLACK"

pattern BurnInBackgroundColorNONE :: BurnInBackgroundColor
pattern BurnInBackgroundColorNONE = BurnInBackgroundColor' "NONE"

pattern BurnInBackgroundColorWHITE :: BurnInBackgroundColor
pattern BurnInBackgroundColorWHITE = BurnInBackgroundColor' "WHITE"

{-# COMPLETE
  BurnInBackgroundColorBLACK,
  BurnInBackgroundColorNONE,
  BurnInBackgroundColorWHITE,
  BurnInBackgroundColor'
  #-}

instance Prelude.FromText BurnInBackgroundColor where
  parser = BurnInBackgroundColor' Prelude.<$> Prelude.takeText

instance Prelude.ToText BurnInBackgroundColor where
  toText (BurnInBackgroundColor' x) = x

instance Prelude.Hashable BurnInBackgroundColor

instance Prelude.NFData BurnInBackgroundColor

instance Prelude.ToByteString BurnInBackgroundColor

instance Prelude.ToQuery BurnInBackgroundColor

instance Prelude.ToHeader BurnInBackgroundColor

instance Prelude.ToJSON BurnInBackgroundColor where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON BurnInBackgroundColor where
  parseJSON = Prelude.parseJSONText "BurnInBackgroundColor"
