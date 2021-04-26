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
-- Module      : Network.AWS.MediaLive.Types.H264Syntax
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.H264Syntax
  ( H264Syntax
      ( ..,
        H264SyntaxDEFAULT,
        H264SyntaxRP2027
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | H264 Syntax
newtype H264Syntax = H264Syntax'
  { fromH264Syntax ::
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

pattern H264SyntaxDEFAULT :: H264Syntax
pattern H264SyntaxDEFAULT = H264Syntax' "DEFAULT"

pattern H264SyntaxRP2027 :: H264Syntax
pattern H264SyntaxRP2027 = H264Syntax' "RP2027"

{-# COMPLETE
  H264SyntaxDEFAULT,
  H264SyntaxRP2027,
  H264Syntax'
  #-}

instance Prelude.FromText H264Syntax where
  parser = H264Syntax' Prelude.<$> Prelude.takeText

instance Prelude.ToText H264Syntax where
  toText (H264Syntax' x) = x

instance Prelude.Hashable H264Syntax

instance Prelude.NFData H264Syntax

instance Prelude.ToByteString H264Syntax

instance Prelude.ToQuery H264Syntax

instance Prelude.ToHeader H264Syntax

instance Prelude.ToJSON H264Syntax where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON H264Syntax where
  parseJSON = Prelude.parseJSONText "H264Syntax"
