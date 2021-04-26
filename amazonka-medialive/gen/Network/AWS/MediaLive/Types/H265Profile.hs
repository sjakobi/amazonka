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
-- Module      : Network.AWS.MediaLive.Types.H265Profile
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H265Profile
  ( H265Profile
      ( ..,
        H265ProfileMAIN,
        H265ProfileMAIN10BIT
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | H265 Profile
newtype H265Profile = H265Profile'
  { fromH265Profile ::
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

pattern H265ProfileMAIN :: H265Profile
pattern H265ProfileMAIN = H265Profile' "MAIN"

pattern H265ProfileMAIN10BIT :: H265Profile
pattern H265ProfileMAIN10BIT = H265Profile' "MAIN_10BIT"

{-# COMPLETE
  H265ProfileMAIN,
  H265ProfileMAIN10BIT,
  H265Profile'
  #-}

instance Prelude.FromText H265Profile where
  parser = H265Profile' Prelude.<$> Prelude.takeText

instance Prelude.ToText H265Profile where
  toText (H265Profile' x) = x

instance Prelude.Hashable H265Profile

instance Prelude.NFData H265Profile

instance Prelude.ToByteString H265Profile

instance Prelude.ToQuery H265Profile

instance Prelude.ToHeader H265Profile

instance Prelude.ToJSON H265Profile where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H265Profile where
  parseJSON = Prelude.parseJSONText "H265Profile"
