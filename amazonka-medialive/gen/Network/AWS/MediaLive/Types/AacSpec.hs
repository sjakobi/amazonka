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
-- Module      : Network.AWS.MediaLive.Types.AacSpec
-- Copyright   : (c) 2013-2021 Brendan Hay
-- License     : Mozilla Public License, v. 2.0.
-- Maintainer  : Brendan Hay <brendan.g.hay+amazonka@gmail.com>
-- Stability   : auto-generated
-- Portability : non-portable (GHC extensions)
module Network.AWS.MediaLive.Types.AacSpec
  ( AacSpec
      ( ..,
        AacSpecMPEG2,
        AacSpecMPEG4
      ),
  )
where

import qualified Network.AWS.Prelude as Prelude

-- | Aac Spec
newtype AacSpec = AacSpec'
  { fromAacSpec ::
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

pattern AacSpecMPEG2 :: AacSpec
pattern AacSpecMPEG2 = AacSpec' "MPEG2"

pattern AacSpecMPEG4 :: AacSpec
pattern AacSpecMPEG4 = AacSpec' "MPEG4"

{-# COMPLETE
  AacSpecMPEG2,
  AacSpecMPEG4,
  AacSpec'
  #-}

instance Prelude.FromText AacSpec where
  parser = AacSpec' Prelude.<$> Prelude.takeText

instance Prelude.ToText AacSpec where
  toText (AacSpec' x) = x

instance Prelude.Hashable AacSpec

instance Prelude.NFData AacSpec

instance Prelude.ToByteString AacSpec

instance Prelude.ToQuery AacSpec

instance Prelude.ToHeader AacSpec

instance Prelude.ToJSON AacSpec where
  toJSON = Prelude.toJSONText

instance Prelude.FromJSON AacSpec where
  parseJSON = Prelude.parseJSONText "AacSpec"
